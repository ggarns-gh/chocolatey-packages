$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v1.4.0/databricks_cli_1.4.0_windows_amd64.zip'
    checksum64     = 'a1c8d88b61621b6531f4e0d1009b2c27d1aee9edc619e7f0b2ba786fd5482f1b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs