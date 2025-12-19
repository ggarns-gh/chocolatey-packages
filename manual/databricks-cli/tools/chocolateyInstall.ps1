$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.280.0/databricks_cli_0.280.0_windows_amd64.zip'
    checksum64     = '8cc7f2cc8a469fc7ac39d0bc0b1a8cb9ab45d876b52c92471d31c9d71896b4e6'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs