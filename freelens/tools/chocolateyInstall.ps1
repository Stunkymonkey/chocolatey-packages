$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.0.0/Freelens-1.0.0-windows-amd64.msi'
  Checksum64             = 'f766a5a8f2f3e5929549ddf7678b5ecd487be37433ccdd179c5fdf60ccbb08dd'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
