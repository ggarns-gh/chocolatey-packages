$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.256.0/databricks_cli_0.256.0_windows_amd64-signed.zip'
    checksum64     = '68ad6a95c765b637aa358d34628950fb88612acb6378adeed489d02c9af84032'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs