$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.2.1/Freelens-1.2.1-windows-amd64.msi'
  Checksum64             = 'def0ae0b3ba6e71b815f2c4660fecd9d18f1be843247ddba62961975bb3923c3'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
