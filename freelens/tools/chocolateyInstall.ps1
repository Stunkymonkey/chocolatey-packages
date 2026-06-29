$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.10.2/Freelens-1.10.2-windows-amd64.msi'
  Checksum64             = '39dcbc7035727eee504240a785870163497673accf2dca27a8905f3e66d794d1'
  ChecksumType64         = 'sha256'
  SilentArgs             = 'ALLUSERS=1 /qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
