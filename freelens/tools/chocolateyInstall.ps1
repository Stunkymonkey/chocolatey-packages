$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.5.3/Freelens-1.5.3-windows-amd64.msi'
  Checksum64             = '0979a860bb36026e5baf3f6686db67e19fb3c9b0a965e930356e08de5738de7f'
  ChecksumType64         = 'sha256'
  SilentArgs             = '/qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
