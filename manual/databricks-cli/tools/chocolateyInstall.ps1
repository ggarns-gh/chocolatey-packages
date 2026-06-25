$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v1.3.0/databricks_cli_1.3.0_windows_amd64.zip'
    checksum64     = '2ae13a0569218a9c23123f3f1358a795dd9cf1cc18fe9a3e1f19102be26d20c3'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs