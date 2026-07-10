import argparse
import os
import time
import requests
from urllib.parse import urljoin, urlparse
import re
from http.cookiejar import MozillaCookieJar
import browser_cookie3

# === Descrição ===
# Este script faz o seguinte:
# 1. Extrai cookies do Firefox para autenticação
# 2. Usa requests para baixar páginas do SharePoint
# 3. Funciona com redes corporativas (sem Selenium)
# 4. Não precisa de drivers externos
# =================

class SharePointDownloaderSimple:
    def __init__(self, base_url, output_dir):
        self.base_url = base_url
        self.output_dir = output_dir
        self.session = requests.Session()
        self.downloaded_urls = set()
        self.failed_downloads = []
        
        # Configurar proxy se disponível
        proxies = {
            'http': 'http://siprx.caixa:9090',
            'https': 'http://siprx.caixa:9090'
        }
        self.session.proxies.update(proxies)
        
        # Headers para simular um navegador
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36 Edg/91.0.864.59',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
            'Accept-Language': 'pt-BR,pt;q=0.9,en;q=0.8',
            'Accept-Encoding': 'gzip, deflate, br',
            'Connection': 'keep-alive',
            'Upgrade-Insecure-Requests': '1',
            'Sec-Fetch-Dest': 'document',
            'Sec-Fetch-Mode': 'navigate',
            'Sec-Fetch-Site': 'none'
        })
        
        # Criar diretório de saída
        os.makedirs(output_dir, exist_ok=True)
        
        print("SharePoint Downloader (versão simples) inicializado")
    
    def load_firefox_cookies(self, domain):
        """Carrega cookies do Firefox para o domínio especificado"""
        try:
            print(f"Carregando cookies do Firefox para: {domain}")
            cj = browser_cookie3.firefox(domain_name=domain)
            
            cookie_count = 0
            for cookie in cj:
                self.session.cookies.set(
                    cookie.name, 
                    cookie.value, 
                    domain=cookie.domain,
                    path=cookie.path
                )
                cookie_count += 1
            
            print(f"✓ {cookie_count} cookies carregados com sucesso")
            return True
            
        except Exception as e:
            print(f"✗ Erro ao carregar cookies: {e}")
            print("Certifique-se de que você está logado no SharePoint no Firefox")
            return False
    
    def sanitize_filename(self, filename):
        """Remove caracteres inválidos do nome do arquivo"""
        invalid_chars = '<>:"/\\|?*'
        for char in invalid_chars:
            filename = filename.replace(char, '_')
        return filename[:255]
    
    def download_page(self, url, filename=None):
        """Baixa uma página web"""
        try:
            if url in self.downloaded_urls:
                return True
            
            print(f"Baixando: {url}")
            
            response = self.session.get(url, timeout=30)
            response.raise_for_status()
            
            if not filename:
                parsed_url = urlparse(url)
                filename = parsed_url.path.strip('/').replace('/', '_') or 'index'
                filename = self.sanitize_filename(filename) + '.html'
            
            local_path = os.path.join(self.output_dir, filename)
            
            # Garante que o diretório existe
            os.makedirs(os.path.dirname(local_path), exist_ok=True)
            
            # Salva o conteúdo
            with open(local_path, 'w', encoding='utf-8') as f:
                f.write(response.text)
            
            self.downloaded_urls.add(url)
            print(f"✓ Salvo: {local_path}")
            return True
            
        except Exception as e:
            print(f"✗ Erro ao baixar {url}: {e}")
            self.failed_downloads.append((url, str(e)))
            return False
    
    def extract_links(self, html_content, base_url):
        """Extrai links do conteúdo HTML"""
        links = set()
        
        # Regex simples para encontrar links
        link_pattern = r'href=["\']([^"\']+)["\']'
        matches = re.findall(link_pattern, html_content, re.IGNORECASE)
        
        for match in matches:
            # Converte links relativos em absolutos
            full_url = urljoin(base_url, match)
            
            # Só inclui links do mesmo domínio
            if self.is_same_domain(full_url, base_url):
                links.add(full_url)
        
        return links
    
    def is_same_domain(self, url1, url2):
        """Verifica se duas URLs são do mesmo domínio"""
        try:
            domain1 = urlparse(url1).netloc.lower()
            domain2 = urlparse(url2).netloc.lower()
            return domain1 == domain2
        except:
            return False
    
    def download_sharepoint_site(self, max_pages=20):
        """Baixa o site SharePoint"""
        try:
            print(f"Iniciando download do site: {self.base_url}")
            
            # Carrega cookies do Firefox
            domain = urlparse(self.base_url).netloc
            if not self.load_firefox_cookies(domain):
                print("Aviso: Continuando sem cookies. Pode haver problemas de autenticação.")
            
            # Faz uma requisição de teste
            print("Testando conectividade...")
            response = self.session.get(self.base_url, timeout=30)
            
            if response.status_code == 200:
                print("✓ Conectividade OK")
            else:
                print(f"⚠ Status code: {response.status_code}")
            
            # Lista de URLs para processar
            urls_to_process = [self.base_url]
            processed_urls = set()
            page_count = 0
            
            while urls_to_process and page_count < max_pages:
                current_url = urls_to_process.pop(0)
                
                if current_url in processed_urls:
                    continue
                
                print(f"\nProcessando página {page_count + 1}/{max_pages}: {current_url}")
                
                # Baixa a página
                if self.download_page(current_url):
                    # Se conseguiu baixar, extrai links (se for HTML)
                    try:
                        response = self.session.get(current_url, timeout=30)
                        if 'text/html' in response.headers.get('content-type', ''):
                            links = self.extract_links(response.text, current_url)
                            
                            # Adiciona novos links para processar
                            for link in links:
                                if link not in processed_urls and link not in urls_to_process:
                                    if 'sharepoint.com' in link and '/sites/' in link:
                                        urls_to_process.insert(0, link)  # Prioriza
                                    else:
                                        urls_to_process.append(link)
                    except:
                        pass
                
                processed_urls.add(current_url)
                page_count += 1
                
                # Pausa entre requisições para não sobrecarregar o servidor
                time.sleep(1)
            
            print(f"\nDownload concluído!")
            print(f"Páginas processadas: {page_count}")
            print(f"URLs baixadas: {len(self.downloaded_urls)}")
            print(f"Arquivos salvos em: {self.output_dir}")
            
            if self.failed_downloads:
                print(f"Falhas de download: {len(self.failed_downloads)}")
                for url, error in self.failed_downloads[:5]:
                    print(f"  ✗ {url}: {error}")
            
        except Exception as e:
            print(f"Erro durante o download: {e}")

def main():
    parser = argparse.ArgumentParser(description="Script simples para copiar portal SharePoint (sem Selenium)")
    parser.add_argument("url_portal", help="URL completa do portal SharePoint")
    parser.add_argument("diretorio_destino", help="Diretório onde os arquivos serão salvos")
    parser.add_argument("--max-pages", type=int, default=20, help="Número máximo de páginas para processar (padrão: 20)")
    
    args = parser.parse_args()
    
    # Cria o downloader
    downloader = SharePointDownloaderSimple(
        base_url=args.url_portal,
        output_dir=args.diretorio_destino
    )
    
    # Inicia o download
    downloader.download_sharepoint_site(max_pages=args.max_pages)

if __name__ == "__main__":
    main()
