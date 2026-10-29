$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v2.0.0/Freelens-2.0.0-windows-amd64.msi'
  Checksum64             = '08ccae8beabc2cd9bd789a2a8883ba5c8d9093a92fdfb2abcadd76c38603e483'
  ChecksumType64         = 'sha256'
  SilentArgs             = 'ALLUSERS=1 /qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
