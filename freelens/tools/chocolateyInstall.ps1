$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.8.0/Freelens-1.8.0-windows-amd64.msi'
  Checksum64             = 'a059489ff54d2fe2e1c4f301db82da601204bbdb5caa1f7e94cb460222c0cf74'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
