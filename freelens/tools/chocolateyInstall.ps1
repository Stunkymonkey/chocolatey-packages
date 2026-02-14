$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.8.1/Freelens-1.8.1-windows-amd64.msi'
  Checksum64             = 'a65d9c94e66491fde93ab275dad4c6ba1c88005433a7becf5291ed1d92fa6954'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
