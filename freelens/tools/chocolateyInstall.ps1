$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.5.2/Freelens-1.5.2-windows-amd64.msi'
  Checksum64             = '4d4f52fe38731db44098ca506f3832b1cc6610faff3ff09a5e74d5621b7ded69'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
