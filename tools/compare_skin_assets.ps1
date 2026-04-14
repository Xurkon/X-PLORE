# Compare X-Plore skin assets vs Zygor source
$zygorBase = "C:\Users\kance\Documents\GitHub\ZygorGuidesViewer\Skins\Default"
$xploreBase = "C:\Users\kance\Documents\GitHub\X-PLORE\addon\X-Plore\textures\skins"

$skinMap = @{
    "starlight"       = "Starlight"
    "starlight-glass" = "Starlight-glass"
    "midnight"        = "Midnight"
    "stealth"         = "Stealth"
    "stealth-glass"   = "Stealth-glass"
}

foreach ($localName in $skinMap.Keys) {
    $zygorName = $skinMap[$localName]
    $zygorDir  = Join-Path $zygorBase $zygorName
    $xploreDir = Join-Path $xploreBase $localName

    if (-not (Test-Path $zygorDir)) {
        Write-Host "MISSING ZYGOR DIR: $zygorDir"
        continue
    }

    $zygorFiles  = Get-ChildItem -Path $zygorDir -File | Select-Object -ExpandProperty Name
    $xploreFiles = if (Test-Path $xploreDir) {
        Get-ChildItem -Path $xploreDir -File | Select-Object -ExpandProperty Name
    } else { @() }

    $missing = $zygorFiles | Where-Object { $_ -notin $xploreFiles }

    if ($missing) {
        Write-Host ""
        Write-Host "=== $localName : MISSING FILES ==="
        $missing | ForEach-Object { Write-Host "  $_" }
    } else {
        Write-Host ""
        Write-Host "=== $localName : OK (no missing files) ==="
    }

    # Show extra files in X-Plore that aren't in Zygor
    $extra = $xploreFiles | Where-Object { $_ -notin $zygorFiles }
    if ($extra) {
        Write-Host "  EXTRA in X-Plore (not in Zygor):"
        $extra | ForEach-Object { Write-Host "    $_" }
    }
}
