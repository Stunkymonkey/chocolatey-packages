$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName            = 'freelens'
  FileType               = 'msi'
  Url64bit               = 'https://github.com/freelensapp/freelens/releases/download/v1.10.1/Freelens-1.10.1-windows-amd64.msi'
  Checksum64             = '677cfd66bada311493ecadf2b42e1d83ba9ced9fd071436db3ecb9d8be330386'
  ChecksumType64         = 'sha256'
  SilentArgs             = 'ALLUSERS=1 /qn'
  ValidExitCodes         = @(0)
  SoftwareName           = 'freelens*'
}
Install-ChocolateyPackage @packageArgs
