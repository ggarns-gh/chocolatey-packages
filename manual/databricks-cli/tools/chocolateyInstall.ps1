$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.227.1/databricks_cli_0.227.1_windows_amd64-signed.zip'
    checksum64     = 'e6a8fe7f6b921db76b1c388fd6dcdced01ae0039bb6ec047e4fb6bc43cb0cb8b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs