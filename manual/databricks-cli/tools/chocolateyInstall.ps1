$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.260.0/databricks_cli_0.260.0_windows_amd64-signed.zip'
    checksum64     = '300f0a8b1dbc61e5f76e7de6068cc91a8eb5cc503c4e74c483075175a9c65695'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs