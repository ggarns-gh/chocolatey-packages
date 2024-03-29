$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.216.0/databricks_cli_0.216.0_windows_amd64.zip'
    checksum64     = '9dd20b0a91446ca9e24067f578da438f04ce39006f4fb0f019e02f1826e76148'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs