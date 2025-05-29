$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.3.1/Freelens-1.3.1-windows-amd64.msi'
  Checksum64             = '04b89add77475e3b0d002f1be906d0caf308b64ae8dc9cf4877a5a3ee3a973e0'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
