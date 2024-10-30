$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.232.0/databricks_cli_0.232.0_windows_amd64-signed.zip'
    checksum64     = '1268ef33d80e5f368161cb4e34c44a2fdae7101e505f3047f009f4cfd4867840'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs