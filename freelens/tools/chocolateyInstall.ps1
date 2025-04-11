$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.2.0/Freelens-1.2.0-windows-amd64.msi'
  Checksum64             = 'c8724aee588b6e6ee1839dc34204539cf628c9a63dfa5883bd3663eb550d1465'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
