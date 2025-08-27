$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.264.1/databricks_cli_0.264.1_windows_amd64-signed.zip'
    checksum64     = '5e5b0a762d61a28e3b0d86df30e6acaede862e0fe2b7eb187d2400f7b28bfb95'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs