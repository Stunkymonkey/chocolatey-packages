$ErrorActionPreference = 'Stop'

$installationDir = "$(Get-ToolsLocation)"

Get-ChildItem "$installationDir/vdot" -Directory | Remove-Item -Recurse -Force
