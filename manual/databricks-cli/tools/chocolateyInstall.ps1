$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.299.1/databricks_cli_0.299.1_windows_amd64.zip'
    checksum64     = 'fbee5235cfe2885c9511e5837f152a7d065c75ca47ec3dc8ea0b3d448dfd5850'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs