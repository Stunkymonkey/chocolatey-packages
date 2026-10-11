$ErrorActionPreference = 'Stop'

$installationDir = "$(Get-ToolsLocation)"

Get-ChildItem "$installationDir/wdot" -Directory | Remove-Item -Recurse -Force
