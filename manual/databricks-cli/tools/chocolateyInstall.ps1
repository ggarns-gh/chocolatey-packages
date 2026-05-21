$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v1.0.0/databricks_cli_1.0.0_windows_amd64.zip'
    checksum64     = 'fb83981fc5c849b7d7720c16760bea0826307ca729bcfc5d2a03287b0f95ffd1'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs