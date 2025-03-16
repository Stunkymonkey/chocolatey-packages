$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'freelens'
  fileType               = 'msi'
  url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.0.0/Freelens-1.0.0-windows-amd64.msi'
  checksum64             = 'f766a5a8f2f3e5929549ddf7678b5ecd487be37433ccdd179c5fdf60ccbb08dd'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
