$ErrorActionPreference = 'Stop'

$amd64Url = 'https://github.com/freelensapp/freelens/releases/download/v1.9.0/Freelens-1.9.0-windows-amd64.msi'
$amd64Checksum = 'a5b6b3821acd92bf1d194372a5aa06090acd861a8f9d3f1af3b3726ce66e172e'
$arm64Url = 'https://github.com/freelensapp/freelens/releases/download/v1.9.0/Freelens-1.9.0-windows-arm64.msi'
$arm64Checksum = 'e3f92e5f4a31aeb35051e8cd4a10dbaff952eb725a2a33e28b65c03eb483dbe8'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = $amd64Url
  Checksum64             = $amd64Checksum
  ChecksumType64         = 'sha256'
  SilentArgs             = 'ALLUSERS=1 /qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}

if ($env:PROCESSOR_ARCHITECTURE -eq 'ARM64' -or $env:PROCESSOR_ARCHITEW6432 -eq 'ARM64') {
  $packageArgs.Url64bit = $arm64Url
  $packageArgs.Checksum64 = $arm64Checksum
}

Install-ChocolateyPackage @packageArgs
