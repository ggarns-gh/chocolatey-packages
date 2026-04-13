$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.294.0/databricks_cli_0.294.0_windows_amd64.zip'
    checksum64     = '2eb23c80387a732acf46579538ea26a90c30ed1585c6f18f096a75cb2bf92b6f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs