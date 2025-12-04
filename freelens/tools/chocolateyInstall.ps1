$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.7.0/Freelens-1.7.0-windows-amd64.msi'
  Checksum64             = 'e24f3ed2b4fa1476b13dfd47dafdc6caa97ed9ff838856d3279c396d72277b9a'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
