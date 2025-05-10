$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.3.0/Freelens-1.3.0-windows-amd64.msi'
  Checksum64             = '80245ad07a995caa5f0b3b27e3d891e7d8453e995668de8b4656f10efdfd0e5b'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
