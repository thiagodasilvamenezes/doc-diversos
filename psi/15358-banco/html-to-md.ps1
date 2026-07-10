#Requires -Version 5.1
<#
.SYNOPSIS
    Converte HTMLs para Markdown via pandoc (stdin), copia imagens e atualiza referencias.
    Descobre os arquivos por enumeracao (sem literais acentuados no script).
#>

$base   = 'F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta'
$outDir = "$base\Arquivo\arquivos-md\portais"
$imgDir = "$outDir\imagens"

New-Item -ItemType Directory -Force -Path $outDir | Out-Null
New-Item -ItemType Directory -Force -Path $imgDir  | Out-Null

# --- Localizar pandoc ---
$pandocExe = $null
$candidates = @(
    (Get-Command pandoc -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Source),
    "$env:LOCALAPPDATA\Microsoft\WinGet\Links\pandoc.exe",
    "$env:LOCALAPPDATA\Microsoft\WinGet\Packages\JohnMacFarlane.Pandoc_Microsoft.Winget.Source_8wekyb3d8bbwe\pandoc-3.10\pandoc.exe",
    "$env:ProgramFiles\Pandoc\pandoc.exe"
)
foreach ($c in $candidates) { if ($c -and (Test-Path $c)) { $pandocExe = $c; break } }
if (-not $pandocExe) { Write-Error 'pandoc nao encontrado.'; exit 1 }
Write-Host "pandoc: $pandocExe"

# --- Coletar diretorios fonte dinamicamente ---
$sourceDirs = Get-ChildItem -LiteralPath $base -Directory |
    Where-Object { $_.Name -notlike 'Arquivo' } |
    Select-Object -ExpandProperty FullName

Write-Host "Diretorios fonte: $($sourceDirs -join '; ')"

# Coletar todos os HTMLs: raiz dos diretorios + subpastas _files
$htmlFiles = foreach ($dir in $sourceDirs) {
    Get-ChildItem -LiteralPath $dir -Filter '*.html' -File
    Get-ChildItem -LiteralPath $dir -Directory | ForEach-Object {
        Get-ChildItem -LiteralPath $_.FullName -Filter '*.html' -File
    }
}

Write-Host "Total HTMLs: $($htmlFiles.Count)"

$imgExt = @('.png','.jpg','.jpeg','.gif','.svg','.webp','.bmp','.ico','.tif','.tiff')
$stats  = @{ ok = 0; err = 0 }

foreach ($htmlFile in $htmlFiles) {
    $htmlPath = $htmlFile.FullName
    $htmlDir  = $htmlFile.DirectoryName
    $htmlBase = $htmlFile.BaseName
    $mdBase   = $htmlBase -replace '\s+','-'
    $mdPath   = Join-Path $outDir "$mdBase.md"

    # Diretorio de imagens associado
    $isFilesDir = $htmlDir -match '_files$'
    $filesDir   = if ($isFilesDir) { $htmlDir } else { Join-Path $htmlDir "$htmlBase`_files" }

    # Copiar imagens e construir mapa
    $imageMap = @{}
    if (Test-Path -LiteralPath $filesDir) {
        Get-ChildItem -LiteralPath $filesDir -File |
            Where-Object { $imgExt -contains $_.Extension.ToLower() } |
            ForEach-Object {
                $destName = "${mdBase}_$($_.Name)"
                $destPath = Join-Path $imgDir $destName
                Copy-Item -LiteralPath $_.FullName -Destination $destPath -Force
                foreach ($key in @($_.Name, "$htmlBase`_files/$($_.Name)", "$htmlBase`_files\$($_.Name)")) {
                    if (-not $imageMap.ContainsKey($key)) { $imageMap[$key] = "imagens/$destName" }
                }
            }
    }

    # Converter via stdin para evitar problema de espacos no path
    try {
        $htmlBytes = [System.IO.File]::ReadAllBytes($htmlPath)

        $psi = [System.Diagnostics.ProcessStartInfo]::new()
        $psi.FileName               = $pandocExe
        $psi.Arguments              = '-f html -t gfm --wrap=none --strip-comments'
        $psi.RedirectStandardInput  = $true
        $psi.RedirectStandardOutput = $true
        $psi.RedirectStandardError  = $true
        $psi.UseShellExecute        = $false
        $psi.StandardOutputEncoding = [System.Text.UTF8Encoding]::new($false)

        $proc = [System.Diagnostics.Process]::Start($psi)
        $proc.StandardInput.BaseStream.Write($htmlBytes, 0, $htmlBytes.Length)
        $proc.StandardInput.BaseStream.Flush()
        $proc.StandardInput.BaseStream.Close()

        $mdContent = $proc.StandardOutput.ReadToEnd()
        $errOut    = $proc.StandardError.ReadToEnd()
        $proc.WaitForExit()

        if ($proc.ExitCode -ne 0) {
            Write-Warning "  [ERR] pandoc exit $($proc.ExitCode): $mdBase | $errOut"
            $stats.err++
            continue
        }

        # Atualizar referencias de imagem
        foreach ($key in $imageMap.Keys) {
            $mdContent = $mdContent -replace ([regex]::Escape($key)), $imageMap[$key]
        }

        [System.IO.File]::WriteAllText($mdPath, $mdContent, [System.Text.UTF8Encoding]::new($false))
        $imgCount = ($imageMap.Keys | Where-Object { $_ -notmatch '[/\\]' }).Count
        Write-Host "  [OK]  $mdBase.md  (imgs: $imgCount)"
        $stats.ok++

    } catch {
        Write-Warning "  [ERR] excecao: $mdBase | $_"
        $stats.err++
    }
}

Write-Host ""
Write-Host "=== Concluido === OK:$($stats.ok)  ERR:$($stats.err)"
Write-Host "Markdown : $outDir"
Write-Host "Imagens  : $imgDir"
