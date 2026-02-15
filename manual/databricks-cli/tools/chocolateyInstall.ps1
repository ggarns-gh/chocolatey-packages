$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.287.0/databricks_cli_0.287.0_windows_amd64.zip'
    checksum64     = '574cddf8f430c29dc90a56d1a49d0d97804b9d2fbdf21a9995da8425e29b291a'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs