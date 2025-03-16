Import-Module chocolatey-au

$releases = 'https://api.github.com/repos/freelensapp/freelens/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*Url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*Checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $assets = Invoke-WebRequest -Uri $releases
    $latestVersion = ($assets.Content | ConvertFrom-Json).tag_name -replace "^v", ""

    @{
        URL64          = "https://github.com/freelensapp/freelens/releases/download/v$latestVersion/Freelens-$latestVersion-windows-amd64.msi"
        Version        = $latestVersion
    }
}

update -ChecksumFor 64
