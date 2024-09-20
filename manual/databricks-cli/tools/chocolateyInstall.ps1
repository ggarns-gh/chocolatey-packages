$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.228.1/databricks_cli_0.228.1_windows_amd64-signed.zip'
    checksum64     = '325329e1cd7e18a458688df4c02d931d24e03c06598eb7a97c78ba51ce1e8726'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs