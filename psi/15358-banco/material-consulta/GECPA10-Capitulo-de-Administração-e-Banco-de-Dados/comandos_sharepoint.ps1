# Script PowerShell para cópia de portais SharePoint - ADI/ABD
# Gerado em: 2026-07-09

$destino = "C:\Desenvolvimento\repositorio\github-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados"
$browser = "edge"
$ieMode = "--ie-mode"
$export = "md"
$maxDepth = 0

$urls = @(
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/ADI-ComeceAqui-Fundamentos.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/Como-baixar-e-configurar-o-PowerDesigner.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/Solicita%C3%A7%C3%A3o-de-acessos.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/Normativos---AD.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/ABD_na_CAIXA.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/ABD_Capacitacao.aspx",
    "https://caixa.sharepoint.com/sites/5141/SitePages/Datatypes-SGBD.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/ADI_Capacitacao.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/ADI-ComeceAqui-Fundamentos.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/ADI-na-CAIXA.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/Normativos---AD.aspx",
    "https://caixa.sharepoint.com/sites/NPRD/SitePages/ADI_Comunicados.aspx"
)

Write-Host "Iniciando cópia de $($urls.Count) portais SharePoint..." -ForegroundColor Green
Write-Host ""

$contador = 1
foreach ($url in $urls) {
    Write-Host "[$contador/$($urls.Count)] Processando: $($url.Split('/')[-1])" -ForegroundColor Cyan
    
    # Executar comando
    & copiar_portal_sharepoint_auto.bat $url $destino --browser $browser $ieMode --export $export --max-depth $maxDepth
    
    $contador++
    Write-Host ""
}

Write-Host "Cópia de portais concluída!" -ForegroundColor Green
