$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.221.0/databricks_cli_0.221.0_windows_amd64.zip'
    checksum64     = '3f64eca596185c6336520204d538b6aa8c7bfc4fb85335255c37b4d16fde4188'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs