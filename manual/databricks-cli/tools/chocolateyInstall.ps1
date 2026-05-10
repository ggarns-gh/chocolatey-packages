$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.299.0/databricks_cli_0.299.0_windows_amd64.zip'
    checksum64     = 'e044e078d8937cb3bdca84136fdcd2107bf4e9adc3c51faa16b3db0c87bca8ab'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs