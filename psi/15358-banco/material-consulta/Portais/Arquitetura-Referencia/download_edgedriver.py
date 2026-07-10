import os
import zipfile
import shutil
from urllib.request import urlretrieve

def download_edgedriver():
    """Baixa o EdgeDriver manualmente"""
    
    # URL para EdgeDriver versão 139 (compatível com Edge 139)
    # Você pode ajustar a versão conforme necessário
    version = "139.0.2210.14"  # Versão estável
    url = f"https://msedgedriver.azureedge.net/{version}/edgedriver_win64.zip"
    
    print(f"Baixando EdgeDriver versão {version}...")
    
    try:
        # Baixa o arquivo ZIP
        zip_path = "edgedriver.zip"
        urlretrieve(url, zip_path)
        print("Download concluído!")
        
        # Extrai o arquivo
        with zipfile.ZipFile(zip_path, 'r') as zip_ref:
            zip_ref.extractall(".")
        
        # Remove o arquivo ZIP
        os.remove(zip_path)
        
        # Verifica se o arquivo foi extraído
        if os.path.exists("msedgedriver.exe"):
            print("✓ EdgeDriver extraído com sucesso: msedgedriver.exe")
            print("Agora você pode executar o script principal!")
            return True
        else:
            print("✗ Erro ao extrair EdgeDriver")
            return False
            
    except Exception as e:
        print(f"Erro ao baixar EdgeDriver: {e}")
        print("\nSolução alternativa:")
        print("1. Acesse: https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/")
        print("2. Baixe a versão compatível com seu Edge")
        print("3. Coloque o msedgedriver.exe nesta pasta")
        return False

if __name__ == "__main__":
    download_edgedriver()
