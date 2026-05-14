Import-Module chocolatey-au

$releases = 'https://api.github.com/repos/freelensapp/freelens/releases/latest'

function Get-RemoteSha256 {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Url
    )

    $tempFile = Join-Path $env:TEMP ([System.IO.Path]::GetRandomFileName())

    try {
        Invoke-WebRequest -Uri $Url -OutFile $tempFile
        (Get-FileHash -Path $tempFile -Algorithm SHA256).Hash.ToLowerInvariant()
    }
    finally {
        if (Test-Path $tempFile) {
            Remove-Item $tempFile -Force
        }
    }
}

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            '(?i)(^\s*\$amd64Url\s*=\s*)(\''.*\'')'      = "`$1'$($Latest.URL64)'"
            '(?i)(^\s*\$amd64Checksum\s*=\s*)(\''.*\'')' = "`$1'$($Latest.Checksum64)'"
            '(?i)(^\s*\$arm64Url\s*=\s*)(\''.*\'')'      = "`$1'$($Latest.URL64Arm)'"
            '(?i)(^\s*\$arm64Checksum\s*=\s*)(\''.*\'')' = "`$1'$($Latest.Checksum64Arm)'"
        }
        ".\freelens.nuspec" = @{
            '(?i)(<releaseNotes>https://github\.com/freelensapp/freelens/releases/tag/v)[^<]+(</releaseNotes>)' = "`$1$($Latest.Version)`$2"
        }
    }
}

function global:au_GetLatest {
    $release = (Invoke-WebRequest -Uri $releases).Content | ConvertFrom-Json
    $latestVersion = $release.tag_name -replace "^v", ""
    $amd64Asset = $release.assets | Where-Object { $_.name -match '-windows-amd64\.msi$' } | Select-Object -First 1
    $arm64Asset = $release.assets | Where-Object { $_.name -match '-windows-arm64\.msi$' } | Select-Object -First 1

    if (-not $amd64Asset -or -not $arm64Asset) {
        throw "Could not find amd64 and arm64 MSI assets in the latest Freelens release."
    }

    $url64 = $amd64Asset.browser_download_url
    $url64Arm = $arm64Asset.browser_download_url

    @{
        URL64          = $url64
        Checksum64     = Get-RemoteSha256 -Url $url64
        URL64Arm       = $url64Arm
        Checksum64Arm  = Get-RemoteSha256 -Url $url64Arm
        Version        = $latestVersion
    }
}

update
