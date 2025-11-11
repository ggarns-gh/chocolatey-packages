$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.274.0/databricks_cli_0.274.0_windows_amd64-signed.zip'
    checksum64     = '39dc08cf20c0a4ea8718b1b96bf1a06a0ba529459815f8b8be03f20dd2f7fb70'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs