$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.223.0/databricks_cli_0.223.0_windows_amd64-signed.zip'
    checksum64     = '9365e8403676ac614a7914cf75b52f186f5583867d4f4d752414bc2279dac98d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs