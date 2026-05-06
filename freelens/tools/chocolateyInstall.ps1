$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.9.0/Freelens-1.9.0-windows-amd64.msi'
  Checksum64             = 'a5b6b3821acd92bf1d194372a5aa06090acd861a8f9d3f1af3b3726ce66e172e'
  ChecksumType64         = 'sha256'
  SilentArgs             = 'ALLUSERS=1 /qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
