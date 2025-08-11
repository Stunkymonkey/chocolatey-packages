$ErrorActionPreference = 'Stop'

$version         = $env:ChocolateyPackageVersion
$toolsDir        = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installationDir = "$(Get-ToolsLocation)"

$packageArgs = @{
  PackageName            = "$packageName"
  Url                    = "https://github.com/The-Virtual-Desktop-Team/Virtual-Desktop-Optimization-Tool/archive/refs/tags/$version.zip"
  Checksum               = 'f766a5a8f2f3e5929549ddf7678b5ecd487be37433ccdd179c5fdf60ccbb08dd'
  ChecksumType           = 'sha256'
  UnzipLocation          = "$installationDir"
}
Install-ChocolateyZipPackage @packageArgs
