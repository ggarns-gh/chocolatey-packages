$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.231.0/databricks_cli_0.231.0_windows_amd64-signed.zip'
    checksum64     = '1b68f52431d5434e4270243142d83d2856f8db887bbdfe22bc18e5e0816df0a2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs