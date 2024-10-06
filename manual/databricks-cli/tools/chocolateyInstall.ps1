$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.229.0/databricks_cli_0.229.0_windows_amd64-signed.zip'
    checksum64     = 'adc16b65005e3ce3bc8c7da1d1cf90a3346d4f5aa54d1e8e2ac34c7b256a70d1'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs