$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.215.0/databricks_cli_0.215.0_windows_amd64.zip'
    checksum64     = '040ac9cd389f7b563141d1028efb805c2d0ec9499ece11c1267a0afa7f86f749'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs