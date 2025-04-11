$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.247.1/databricks_cli_0.247.1_windows_amd64-signed.zip'
    checksum64     = '1c50e33b7eaea0632d8257531b4b3ff13bd0ef04432ca4b3f9aa53bec20079d5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs