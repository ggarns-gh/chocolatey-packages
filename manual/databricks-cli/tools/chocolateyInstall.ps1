$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.247.0/databricks_cli_0.247.0_windows_amd64-signed.zip'
    checksum64     = '7fc2a2bea6b6619d8cfc2afcdcedc692c074a26358e6c8d5134ff4bebb93b99d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs