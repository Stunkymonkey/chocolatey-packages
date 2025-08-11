$ErrorActionPreference = 'Stop'

$installationDir = "$(Get-ToolsLocation)"

Get-ChildItem $installationDir -Directory -Filter "Virtual-Desktop-Optimization-Tool-VDOT-*" | Remove-Item -Recurse -Force
