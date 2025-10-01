﻿$ErrorActionPreference = 'Stop'

$installationDir = "$(Get-ToolsLocation)"

$packageArgs = @{
  PackageName            = 'VDOT'
  Url                    = 'https://github.com/The-Virtual-Desktop-Team/Virtual-Desktop-Optimization-Tool/archive/refs/tags/3.0.2009.0.zip'
  Checksum               = '352d9b448393a5cb0b76005720de3588aaf8fd072e755ffc5ee4273156912433'
  ChecksumType           = 'sha256'
  UnzipLocation          = "$installationDir/vdot"
  SpecificFolder         = 'Virtual-Desktop-Optimization-Tool-3.0.2009.0'
}
Install-ChocolateyZipPackage @packageArgs
# Create "shim"
Install-ChocolateyPowershellCommand -PackageName "VDOT" -PSFileFullPath "$installationDir\vdot\Windows_VDOT.ps1"
