$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.3.2/Freelens-1.3.2-windows-amd64.msi'
  Checksum64             = 'a638b6642f4e492fa1f4b03b52d821fe4a74ed894a8dabce697d35ad8344ace4'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
