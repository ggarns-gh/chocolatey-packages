$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.240.0/databricks_cli_0.240.0_windows_amd64-signed.zip'
    checksum64     = '62ac2b9e5a7723096020f5876194810d045e173be9ba65ffb3d67a12c4422543'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs