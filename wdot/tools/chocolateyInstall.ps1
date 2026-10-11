$ErrorActionPreference = 'Stop'

$installationDir = "$(Get-ToolsLocation)"

$packageArgs = @{
  PackageName            = 'WDOT'
  Url                    = 'https://github.com/The-Virtual-Desktop-Team/Windows-Desktop-Optimization-Tool/archive/refs/tags/v1.1.zip'
  Checksum               = '74288bf5ae98214c95d9d45ed7f8b2c78bab2d2f731d924b91d419906e53f8ce'
  ChecksumType           = 'sha256'
  UnzipLocation          = "$installationDir/wdot"
}
Install-ChocolateyZipPackage @packageArgs

# Create "shim"
$shimArgs = @{
  PackageName    = 'WDOT'
  PSFileFullPath = "$installationDir\wdot\Windows-Desktop-Optimization-Tool-1.1\Windows_Optimization.ps1"
}
Install-ChocolateyPowershellCommand @shimArgs
