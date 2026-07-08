$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.10.3/Freelens-1.10.3-windows-amd64.msi'
  Checksum64             = '21addcff6698124da6d1cf97e26e100ee17c294cecd1e20be2037d22cc030735'
  ChecksumType64         = 'sha256'
  SilentArgs             = 'ALLUSERS=1 /qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
