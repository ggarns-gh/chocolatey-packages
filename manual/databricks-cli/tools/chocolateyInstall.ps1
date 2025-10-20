$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.273.0/databricks_cli_0.273.0_windows_amd64-signed.zip'
    checksum64     = '8d6b5ebcc412853601aea23f5f0e25c3300dc81cb99532fccde93a2b3d0bb96d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs