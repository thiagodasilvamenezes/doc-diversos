import argparse
import hashlib
import json
import os
import re
import time
from collections import deque
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import urldefrag, urljoin, urlparse

import requests
import urllib3


ASSET_TAGS = [
    ("link", "href"),
    ("script", "src"),
    ("img", "src"),
    ("source", "src"),
    ("video", "src"),
    ("audio", "src"),
    ("iframe", "src"),
]

PAGE_TAGS = [
    ("a", "href"),
]


class _LinkCollector(HTMLParser):
    def __init__(self) -> None:
        super().__init__(convert_charrefs=False)
        self.links = []

    def handle_starttag(self, tag, attrs):
        attr_map = dict(attrs)
        if tag == "a" and "href" in attr_map:
            self.links.append((tag, "href", attr_map["href"]))
        elif tag in {"link", "script", "img", "source", "video", "audio", "iframe"}:
            key = "href" if tag == "link" else "src"
            if key in attr_map:
                self.links.append((tag, key, attr_map[key]))


def extract_links_from_html(html: str):
    parser = _LinkCollector()
    parser.feed(html)
    return parser.links


def replace_attr_url(html: str, tag: str, attr: str, old_url: str, new_url: str) -> str:
    # Replace only the exact attribute value for a specific tag.
    pattern = re.compile(
        rf"(<{tag}\\b[^>]*?\\b{attr}\\s*=\\s*[\"']){re.escape(old_url)}([\"'])",
        flags=re.IGNORECASE,
    )
    return pattern.sub(rf"\\1{new_url}\\2", html)


def sanitize_segment(segment: str) -> str:
    segment = segment.strip().replace("\\", "_").replace("/", "_")
    segment = re.sub(r"[^A-Za-z0-9._-]", "_", segment)
    return segment or "_"


class SiteMirror:
    def __init__(
        self,
        start_url: str,
        output_dir: str,
        max_pages: int = 200,
        delay: float = 0.2,
        timeout: int = 20,
        verify_ssl: bool = True,
        include_subdomains: bool = False,
        use_env_proxy: bool = False,
        proxy_url: str = "",
        no_proxy_hosts: str = "",
    ) -> None:
        self.start_url = start_url.rstrip("/")
        self.output_dir = Path(output_dir).resolve()
        self.max_pages = max_pages
        self.delay = delay
        self.timeout = timeout
        self.verify_ssl = verify_ssl
        self.include_subdomains = include_subdomains
        self.use_env_proxy = use_env_proxy
        self.proxy_url = proxy_url
        self.no_proxy_hosts = no_proxy_hosts

        self.base_host = urlparse(self.start_url).hostname or ""
        self.base_scheme = urlparse(self.start_url).scheme or "https"
        self.base_path = urlparse(self.start_url).path or "/"
        self.base_prefix = self._extract_base_prefix(self.base_path)

        self.pages_visited = set()
        self.assets_downloaded = set()
        self.failed = []

        self.url_to_local = {}

        self.session = requests.Session()
        # By default we disable environment proxies to avoid corporate 407 for intranet hosts.
        self.session.trust_env = self.use_env_proxy
        self.session.headers.update(
            {
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) "
                "Chrome/126.0.0.0 Safari/537.36"
            }
        )

        if self.proxy_url:
            self.session.proxies.update({
                "http": self.proxy_url,
                "https": self.proxy_url,
            })

        if self.no_proxy_hosts:
            os.environ["NO_PROXY"] = self.no_proxy_hosts
            os.environ["no_proxy"] = self.no_proxy_hosts

        if not self.verify_ssl:
            urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

        self.output_dir.mkdir(parents=True, exist_ok=True)

    @staticmethod
    def _extract_base_prefix(path: str) -> str:
        # Example: /_beta/... -> /_beta
        cleaned = (path or "/").strip()
        if not cleaned.startswith("/"):
            cleaned = "/" + cleaned
        parts = [p for p in cleaned.split("/") if p]
        if not parts:
            return ""
        return "/" + parts[0]

    def _with_base_prefix(self, path: str) -> str:
        if not self.base_prefix:
            return path
        if path == self.base_prefix or path.startswith(self.base_prefix + "/"):
            return path
        if not path.startswith("/"):
            path = "/" + path
        return f"{self.base_prefix}{path}"

    def is_internal_url(self, url: str) -> bool:
        parsed = urlparse(url)

        if parsed.scheme not in ("http", "https", ""):
            return False

        if not parsed.netloc:
            return True

        host = parsed.hostname or ""
        if host == self.base_host:
            return True

        if self.include_subdomains and host.endswith("." + self.base_host):
            return True

        return False

    def normalize_url(self, current_url: str, raw_url: str) -> str:
        # If site is versioned under a base prefix (e.g. /_beta),
        # keep root-absolute links inside that prefix.
        if raw_url.startswith("/") and self.base_prefix:
            path = self._with_base_prefix(raw_url)
            absolute = f"{self.base_scheme}://{self.base_host}{path}"
        else:
            absolute = urljoin(current_url, raw_url)

        # Some pages emit absolute same-host links without the version prefix.
        parsed_abs = urlparse(absolute)
        if self.base_prefix and (parsed_abs.hostname or "") == self.base_host:
            fixed_path = self._with_base_prefix(parsed_abs.path or "/")
            if fixed_path != (parsed_abs.path or "/"):
                absolute = f"{parsed_abs.scheme}://{parsed_abs.netloc}{fixed_path}"
                if parsed_abs.query:
                    absolute += f"?{parsed_abs.query}"

        absolute, _ = urldefrag(absolute)
        return absolute

    def _path_from_url(self, url: str, default_html: bool) -> Path:
        parsed = urlparse(url)
        raw_path = parsed.path or "/"

        path_obj = Path(raw_path.lstrip("/"))

        if raw_path.endswith("/"):
            path_obj = path_obj / "index.html"
        elif not path_obj.suffix and default_html:
            path_obj = path_obj / "index.html"

        if not str(path_obj):
            path_obj = Path("index.html")

        if parsed.query:
            query_hash = hashlib.md5(parsed.query.encode("utf-8")).hexdigest()[:8]
            stem = path_obj.stem
            suffix = path_obj.suffix or ".html"
            path_obj = path_obj.with_name(f"{stem}__q_{query_hash}{suffix}")

        cleaned_parts = [sanitize_segment(part) for part in path_obj.parts]
        return Path(*cleaned_parts)

    def local_path_for_page(self, url: str) -> Path:
        return self.output_dir / self._path_from_url(url, default_html=True)

    def local_path_for_asset(self, url: str, content_type: str = "") -> Path:
        path = self._path_from_url(url, default_html=False)

        if not path.suffix:
            ext = self._ext_from_content_type(content_type)
            path = path.with_suffix(ext)

        return self.output_dir / path

    @staticmethod
    def _ext_from_content_type(content_type: str) -> str:
        ct = (content_type or "").lower()
        if "text/css" in ct:
            return ".css"
        if "javascript" in ct:
            return ".js"
        if "json" in ct:
            return ".json"
        if "svg" in ct:
            return ".svg"
        if "png" in ct:
            return ".png"
        if "jpeg" in ct or "jpg" in ct:
            return ".jpg"
        if "gif" in ct:
            return ".gif"
        if "webp" in ct:
            return ".webp"
        if "woff2" in ct:
            return ".woff2"
        if "woff" in ct:
            return ".woff"
        if "ttf" in ct:
            return ".ttf"
        if "xml" in ct:
            return ".xml"
        return ".bin"

    @staticmethod
    def _parse_content_type(content_type: str) -> tuple[str, str]:
        value = (content_type or "").strip()
        if not value:
            return "", ""

        parts = [p.strip() for p in value.split(";") if p.strip()]
        mime_type = parts[0].lower() if parts else ""
        charset = ""
        for part in parts[1:]:
            if "=" not in part:
                continue
            key, val = part.split("=", 1)
            if key.strip().lower() == "charset":
                charset = val.strip().strip("\"'").lower()
                break
        return mime_type, charset

    @staticmethod
    def _charset_from_meta(html_bytes: bytes) -> str:
        head = html_bytes[:8192]
        patterns = [
            br"<meta[^>]+charset\s*=\s*[\"']?\s*([A-Za-z0-9._:-]+)",
            br"<meta[^>]+http-equiv\s*=\s*[\"']content-type[\"'][^>]+content\s*=\s*[\"'][^\"']*charset\s*=\s*([A-Za-z0-9._:-]+)",
        ]
        for pattern in patterns:
            match = re.search(pattern, head, flags=re.IGNORECASE)
            if match:
                return match.group(1).decode("ascii", errors="ignore").strip().lower()
        return ""

    def _decode_html_response(self, response) -> str:
        raw = response.content
        content_type = response.headers.get("Content-Type", "")
        _, header_charset = self._parse_content_type(content_type)
        meta_charset = self._charset_from_meta(raw)

        candidates = [
            header_charset,
            meta_charset,
            "utf-8",
            getattr(response, "apparent_encoding", ""),
            "cp1252",
            "latin1",
        ]

        tried = set()
        for charset in candidates:
            enc = (charset or "").strip().lower()
            if not enc or enc in tried:
                continue
            tried.add(enc)
            try:
                return raw.decode(enc)
            except (LookupError, UnicodeDecodeError):
                continue

        return raw.decode("latin1", errors="ignore")

    def _write_file(self, path: Path, content: bytes) -> None:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(content)

    def _write_text(self, path: Path, content: str) -> None:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content, encoding="utf-8", errors="ignore")

    def fetch(self, url: str):
        return self.session.get(url, timeout=self.timeout, verify=self.verify_ssl)

    def maybe_download_asset(self, absolute_url: str) -> Path | None:
        if absolute_url in self.assets_downloaded:
            return self.url_to_local.get(absolute_url)

        if not self.is_internal_url(absolute_url):
            return None

        try:
            response = self.fetch(absolute_url)
            response.raise_for_status()

            content_type = response.headers.get("Content-Type", "")
            local_path = self.local_path_for_asset(absolute_url, content_type)
            self._write_file(local_path, response.content)

            self.assets_downloaded.add(absolute_url)
            self.url_to_local[absolute_url] = local_path

            print(f"[ASSET] {absolute_url} -> {local_path}")
            return local_path
        except Exception as exc:
            self.failed.append({"url": absolute_url, "error": str(exc), "kind": "asset"})
            print(f"[ERRO ASSET] {absolute_url}: {exc}")
            return None

    def rewrite_to_relative(self, source_file: Path, target_file: Path) -> str:
        return os.path.relpath(target_file, start=source_file.parent).replace("\\", "/")

    def process_page(self, page_url: str, queue: deque) -> None:
        print(f"[PAGINA] {page_url}")

        response = self.fetch(page_url)
        response.raise_for_status()

        content_type = response.headers.get("Content-Type", "")
        mime_type, _ = self._parse_content_type(content_type)
        raw_content = response.content
        stripped = raw_content.lstrip(b"\xef\xbb\xbf \t\r\n\f\v")
        looks_like_html = stripped.startswith(b"<")
        is_html = (
            mime_type in {"text/html", "application/xhtml+xml"}
            or "html" in mime_type
            or looks_like_html
        )

        if not is_html:
            local_asset = self.local_path_for_asset(page_url, content_type)
            self._write_file(local_asset, raw_content)
            self.url_to_local[page_url] = local_asset
            self.assets_downloaded.add(page_url)
            print(f"[NAO-HTML] salvo como asset: {local_asset}")
            return

        html_content = self._decode_html_response(response)
        page_local_path = self.local_path_for_page(page_url)
        self.url_to_local[page_url] = page_local_path

        links = extract_links_from_html(html_content)

        for tag_name, attr, raw in links:
            if not raw:
                continue

            abs_url = self.normalize_url(page_url, raw)
            if not self.is_internal_url(abs_url):
                continue

            if (tag_name, attr) in PAGE_TAGS:
                parsed = urlparse(abs_url)
                if parsed.scheme not in ("http", "https"):
                    continue

                if abs_url not in self.pages_visited and abs_url not in queue:
                    queue.append(abs_url)

                target_local = self.local_path_for_page(abs_url)
                relative = self.rewrite_to_relative(page_local_path, target_local)
                html_content = replace_attr_url(html_content, tag_name, attr, raw, relative)
            else:
                local_asset = self.maybe_download_asset(abs_url)
                if local_asset:
                    relative = self.rewrite_to_relative(page_local_path, local_asset)
                    html_content = replace_attr_url(html_content, tag_name, attr, raw, relative)

        self._write_text(page_local_path, html_content)
        print(f"[SALVO] {page_local_path}")

    def save_report(self) -> None:
        report_path = self.output_dir / "mirror_report.json"
        report = {
            "start_url": self.start_url,
            "base_host": self.base_host,
            "pages_visited": len(self.pages_visited),
            "assets_downloaded": len(self.assets_downloaded),
            "failed_count": len(self.failed),
            "failed": self.failed,
        }
        self._write_text(report_path, json.dumps(report, indent=2, ensure_ascii=False))

    def run(self) -> None:
        queue = deque([self.start_url])

        while queue and len(self.pages_visited) < self.max_pages:
            current = queue.popleft()
            if current in self.pages_visited:
                continue

            try:
                self.process_page(current, queue)
                self.pages_visited.add(current)
            except Exception as exc:
                self.failed.append({"url": current, "error": str(exc), "kind": "page"})
                print(f"[ERRO PAGINA] {current}: {exc}")

            if self.delay > 0:
                time.sleep(self.delay)

        self.save_report()

        print("\n=== RESUMO ===")
        print(f"Paginas visitadas: {len(self.pages_visited)}")
        print(f"Assets baixados: {len(self.assets_downloaded)}")
        print(f"Falhas: {len(self.failed)}")
        print(f"Diretorio: {self.output_dir}")
        print("Arquivo de relatorio: mirror_report.json")


def main() -> None:
    parser = argparse.ArgumentParser(description="Espelha um site completo para navegacao offline")
    parser.add_argument("url", help="URL inicial, exemplo: https://arquiteturati.dep.caixa/")
    parser.add_argument("destino", help="Diretorio local de saida")
    parser.add_argument("--max-pages", type=int, default=500, help="Limite de paginas (padrao: 500)")
    parser.add_argument("--delay", type=float, default=0.2, help="Atraso entre requisicoes em segundos")
    parser.add_argument("--timeout", type=int, default=20, help="Timeout por requisicao em segundos")
    parser.add_argument(
        "--include-subdomains",
        action="store_true",
        help="Inclui subdominios do host base",
    )
    parser.add_argument(
        "--insecure",
        action="store_true",
        help="Desabilita verificacao SSL",
    )
    parser.add_argument(
        "--use-env-proxy",
        action="store_true",
        help="Usa proxy do ambiente (HTTP_PROXY/HTTPS_PROXY)",
    )
    parser.add_argument(
        "--proxy-url",
        default="",
        help="Proxy explicito, ex: http://usuario:senha@proxy:porta",
    )
    parser.add_argument(
        "--no-proxy-hosts",
        default="",
        help="Hosts para bypass de proxy, ex: arquiteturati.dep.caixa,.dep.caixa,localhost,127.0.0.1",
    )

    args = parser.parse_args()

    mirror = SiteMirror(
        start_url=args.url,
        output_dir=args.destino,
        max_pages=args.max_pages,
        delay=args.delay,
        timeout=args.timeout,
        verify_ssl=not args.insecure,
        include_subdomains=args.include_subdomains,
        use_env_proxy=args.use_env_proxy,
        proxy_url=args.proxy_url,
        no_proxy_hosts=args.no_proxy_hosts,
    )
    mirror.run()


if __name__ == "__main__":
    main()
