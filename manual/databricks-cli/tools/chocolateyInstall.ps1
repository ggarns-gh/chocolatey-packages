$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.222.0/databricks_cli_0.222.0_windows_amd64-signed.zip'
    checksum64     = 'ae71b8e9c6c31857d667a8eae930ccd7369ca82c65fdafc9d434a15c01a451ae'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs