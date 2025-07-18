$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.5.1/Freelens-1.5.1-windows-amd64.msi'
  Checksum64             = 'd6ba296509a1d2ddeffe4c77eddbab53ecc946775d400f953397d23f606a9700'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
