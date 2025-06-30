$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.4.0/Freelens-1.4.0-windows-amd64.msi'
  Checksum64             = '7be43d48091e852d897b73e47443446f79ea3b28dd6ae2e7535b0a27b50bc645'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
