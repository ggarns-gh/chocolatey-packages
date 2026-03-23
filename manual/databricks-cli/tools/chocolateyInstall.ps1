$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.290.0/databricks_cli_0.290.0_windows_amd64.zip'
    checksum64     = '0ba9f9140ef387bbda3ef85dd0ee1d8924cdb9818f027f0a2808f4d857873034'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs