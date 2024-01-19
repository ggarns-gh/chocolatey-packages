$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.212.1/databricks_cli_0.212.1_windows_amd64.zip'
    checksum64     = '5237f619dc43d99801fe0da82c4600050c50a32a4af3c7f8fa3b693fc9a2469e'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs