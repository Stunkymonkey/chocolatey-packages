Import-Module chocolatey-au

$releases = 'https://api.github.com/repos/The-Virtual-Desktop-Team/Virtual-Desktop-Optimization-Tool/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*Url\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*Checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $assets = Invoke-WebRequest -Uri $releases
    $latestVersion = ($assets.Content | ConvertFrom-Json).tag_name

    @{
        URL64          = "https://github.com/The-Virtual-Desktop-Team/Virtual-Desktop-Optimization-Tool/archive/refs/tags/$latestVersion.zip"
        Version        = $latestVersion
    }
}

update
