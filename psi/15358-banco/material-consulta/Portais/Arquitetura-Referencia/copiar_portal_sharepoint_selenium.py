import argparse
import os
import time
import requests
from selenium import webdriver
from selenium.webdriver.edge.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.edge.options import Options
from selenium.common.exceptions import TimeoutException, NoSuchElementException
from urllib.parse import urljoin, urlparse
import re

try:
    from webdriver_manager.microsoft import EdgeChromiumDriverManager
    WEBDRIVER_MANAGER_AVAILABLE = True
except ImportError:
    WEBDRIVER_MANAGER_AVAILABLE = False
    print("webdriver-manager não encontrado. Instale com: pip install webdriver-manager")

# === Descrição ===
# Este script faz o seguinte:
# 1. Usa Selenium para navegar no SharePoint com Microsoft Edge (já instalado no Windows)
# 2. Extrai links e recursos da página
# 3. Baixa arquivos e páginas mantendo a estrutura de pastas
# 4. Funciona com redes corporativas que bloqueiam wget/curl
# 5. Não precisa de permissões de administrador
# =================

class SharePointDownloader:
    def __init__(self, base_url, output_dir, headless=True, proxy=None):
        self.base_url = base_url
        self.output_dir = output_dir
        self.downloaded_urls = set()
        self.failed_downloads = []
        self.proxy = proxy
        
        # Configurações do Edge
        edge_options = Options()
        if headless:
            edge_options.add_argument("--headless")
        edge_options.add_argument("--no-sandbox")
        edge_options.add_argument("--disable-dev-shm-usage")
        edge_options.add_argument("--disable-gpu")
        edge_options.add_argument("--window-size=1920,1080")
        
        # Oculta automação para contornar WAF corporativo
        edge_options.add_experimental_option('excludeSwitches', ['enable-logging', 'enable-automation'])
        edge_options.add_experimental_option('useAutomationExtension', False)
        edge_options.add_argument('--disable-blink-features=AutomationControlled')
        
        # User agent realista
        edge_options.add_argument('user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36')
        
        # Configurar proxy se fornecido
        if proxy:
            edge_options.add_argument(f'--proxy-server={proxy}')
        
        # Inicializar o driver do Edge
        try:
            # Primeiro tenta usar EdgeDriver local
            possible_driver_paths = [
                r"C:\Desenvolvimento\repositorio\github-thiago\tools\windows\bin\msedgedriver.exe",  # Repo local
                r"C:\Sistemas\tools\edgedriver_win64\msedgedriver.exe",  # Caminho específico do usuário
                "msedgedriver.exe",  # No PATH
                r"C:\Program Files (x86)\Microsoft\Edge\Application\msedgedriver.exe",
                r"C:\Program Files\Microsoft\Edge\Application\msedgedriver.exe",
                r"C:\Windows\System32\msedgedriver.exe",
                os.path.join(os.getcwd(), "msedgedriver.exe"),  # Pasta atual
            ]
            
            driver_found = False
            driver_path_used = None
            
            for driver_path in possible_driver_paths:
                try:
                    if driver_path in ["msedgedriver.exe", "msedgedriver"]:
                        # Tenta sem especificar caminho (usar PATH)
                        try:
                            self.driver = webdriver.Edge(options=edge_options)
                            driver_found = True
                            driver_path_used = "PATH"
                            break
                        except:
                            continue
                    elif os.path.exists(driver_path):
                        # Usa caminho específico
                        service = Service(driver_path)
                        self.driver = webdriver.Edge(service=service, options=edge_options)
                        driver_found = True
                        driver_path_used = driver_path
                        break
                except Exception as e:
                    continue
            
            if not driver_found:
                raise Exception("EdgeDriver não encontrado em locais conhecidos")
            
            print(f"✓ Microsoft Edge WebDriver inicializado com sucesso")
            print(f"  Caminho: {driver_path_used}")
            if proxy:
                print(f"  Proxy: {proxy}")
            
            self.driver.implicitly_wait(10)
            
        except Exception as e:
            print(f"✗ Erro ao inicializar Edge WebDriver: {e}")
            print("\nSoluções:")
            print("1. Copie msedgedriver.exe para: C:\\Desenvolvimento\\repositorio\\github-thiago\\tools\\windows\\bin\\")
            print("2. Ou baixe em: https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/")
            print("3. Ou adicione msedgedriver.exe ao PATH do sistema")
            print("4. Versão do Edge: Menu > Ajuda e suporte > Sobre o Microsoft Edge")
            raise
            
        # Criar diretório de saída
        os.makedirs(output_dir, exist_ok=True)
    
    def sanitize_filename(self, filename):
        """Remove caracteres inválidos do nome do arquivo"""
        # Remove caracteres inválidos para nomes de arquivo no Windows
        invalid_chars = '<>:"/\\|?*'
        for char in invalid_chars:
            filename = filename.replace(char, '_')
        return filename[:255]  # Limita o tamanho do nome do arquivo
    
    def download_file(self, url, local_path):
        """Baixa um arquivo usando as cookies do Selenium"""
        try:
            # Pega as cookies do Selenium
            selenium_cookies = self.driver.get_cookies()
            
            # Converte cookies para requests
            session = requests.Session()
            for cookie in selenium_cookies:
                session.cookies.set(cookie['name'], cookie['value'], domain=cookie['domain'])
            
            # Adiciona headers para simular navegador
            session.headers.update({
                'User-Agent': self.driver.execute_script("return navigator.userAgent;"),
                'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
                'Accept-Language': 'pt-BR,pt;q=0.9,en;q=0.8',
                'Accept-Encoding': 'gzip, deflate',
                'Connection': 'keep-alive',
                'Upgrade-Insecure-Requests': '1',
            })
            
            # Faz o download
            response = session.get(url, stream=True, timeout=30)
            response.raise_for_status()
            
            # Garante que o diretório existe
            os.makedirs(os.path.dirname(local_path), exist_ok=True)
            
            # Salva o arquivo
            with open(local_path, 'wb') as f:
                for chunk in response.iter_content(chunk_size=8192):
                    f.write(chunk)
            
            print(f"✓ Baixado: {url} -> {local_path}")
            return True
            
        except Exception as e:
            print(f"✗ Erro ao baixar {url}: {e}")
            self.failed_downloads.append((url, str(e)))
            return False
    
    def get_page_links(self):
        """Extrai todos os links relevantes da página atual"""
        links = set()
        
        try:
            # Aguarda a página carregar completamente
            WebDriverWait(self.driver, 20).until(
                EC.presence_of_element_located((By.TAG_NAME, "body"))
            )
            
            # Extrai links de navegação e documentos
            link_elements = self.driver.find_elements(By.TAG_NAME, "a")
            
            for link in link_elements:
                try:
                    href = link.get_attribute("href")
                    if href and self.is_valid_link(href):
                        links.add(href)
                except:
                    continue
            
            print(f"Encontrados {len(links)} links na página")
            return links
            
        except Exception as e:
            print(f"Erro ao extrair links: {e}")
            return set()
    
    def is_valid_link(self, url):
        """Verifica se o link é válido para download"""
        if not url:
            return False
            
        # Ignora links externos, javascript, mailto, etc.
        if any(url.startswith(prefix) for prefix in ['javascript:', 'mailto:', 'tel:', '#']):
            return False
        
        # Só processa links do mesmo domínio
        parsed_base = urlparse(self.base_url)
        parsed_url = urlparse(url)
        
        if parsed_url.netloc and parsed_url.netloc != parsed_base.netloc:
            return False
        
        return True
    
    def save_page_content(self, url, filename=None):
        """Salva o conteúdo HTML da página atual"""
        try:
            if not filename:
                parsed_url = urlparse(url)
                filename = parsed_url.path.strip('/').replace('/', '_') or 'index'
                filename = self.sanitize_filename(filename) + '.html'
            
            local_path = os.path.join(self.output_dir, filename)
            
            # Pega o HTML da página após JavaScript executar
            html_content = self.driver.page_source
            
            # Garante que o diretório existe
            os.makedirs(os.path.dirname(local_path), exist_ok=True)
            
            # Salva o HTML
            with open(local_path, 'w', encoding='utf-8') as f:
                f.write(html_content)
            
            print(f"✓ Página salva: {local_path}")
            return True
            
        except Exception as e:
            print(f"✗ Erro ao salvar página {url}: {e}")
            return False
    
    def download_sharepoint_site(self, max_pages=50):
        """Baixa o site SharePoint navegando pelas páginas"""
        try:
            print(f"Iniciando download do site: {self.base_url}")
            
            # Navega para a página inicial
            self.driver.get(self.base_url)
            
            # Aguarda carregar e verifica se precisa fazer login
            time.sleep(5)
            
            # Verifica se está na página de login
            current_url = self.driver.current_url
            if 'login' in current_url.lower() or 'auth' in current_url.lower():
                print("Página de login detectada. Por favor, faça login manualmente...")
                print("Pressione Enter após fazer login para continuar...")
                input()
            
            # Salva a página inicial
            self.save_page_content(self.base_url, 'index.html')
            
            # Lista de URLs para processar
            urls_to_process = [self.base_url]
            processed_urls = set()
            page_count = 0
            
            while urls_to_process and page_count < max_pages:
                current_url = urls_to_process.pop(0)
                
                if current_url in processed_urls:
                    continue
                
                try:
                    print(f"\nProcessando página {page_count + 1}: {current_url}")
                    self.driver.get(current_url)
                    time.sleep(3)  # Aguarda carregar
                    
                    # Salva a página atual
                    page_filename = f"page_{page_count + 1}_{self.sanitize_filename(urlparse(current_url).path.replace('/', '_'))}.html"
                    self.save_page_content(current_url, page_filename)
                    
                    # Extrai links da página
                    links = self.get_page_links()
                    
                    # Adiciona novos links para processar
                    for link in links:
                        if link not in processed_urls and link not in urls_to_process:
                            # Prioriza links do SharePoint
                            if 'sharepoint.com' in link and '/sites/' in link:
                                urls_to_process.insert(0, link)  # Adiciona no início
                            else:
                                urls_to_process.append(link)
                    
                    processed_urls.add(current_url)
                    page_count += 1
                    
                except Exception as e:
                    print(f"Erro ao processar {current_url}: {e}")
                    continue
            
            print(f"\nDownload concluído!")
            print(f"Páginas processadas: {page_count}")
            print(f"Arquivos salvos em: {self.output_dir}")
            
            if self.failed_downloads:
                print(f"Falhas de download: {len(self.failed_downloads)}")
                for url, error in self.failed_downloads[:10]:  # Mostra apenas os primeiros 10
                    print(f"  ✗ {url}: {error}")
            
        except Exception as e:
            print(f"Erro durante o download: {e}")
        finally:
            self.driver.quit()

def main():
    parser = argparse.ArgumentParser(description="Script para copiar portal SharePoint usando Selenium")
    parser.add_argument("url_portal", help="URL completa do portal SharePoint")
    parser.add_argument("diretorio_destino", help="Diretório onde os arquivos serão salvos")
    parser.add_argument("--max-pages", type=int, default=50, help="Número máximo de páginas para processar (padrão: 50)")
    parser.add_argument("--headless", action="store_true", help="Executar em modo headless (sem interface gráfica)")
    parser.add_argument("--proxy", help="Proxy corporativo (ex: siprx:9090 ou proxy.caixa:9090)")
    
    args = parser.parse_args()
    
    # Cria o downloader
    downloader = SharePointDownloader(
        base_url=args.url_portal,
        output_dir=args.diretorio_destino,
        headless=args.headless,
        proxy=args.proxy if hasattr(args, 'proxy') else None
    )
    
    # Inicia o download
    downloader.download_sharepoint_site(max_pages=args.max_pages)

if __name__ == "__main__":
    main()
