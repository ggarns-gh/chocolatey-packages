$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.218.0/databricks_cli_0.218.0_windows_amd64-signed.zip'
    checksum64     = '9a548a715b2011e83fb3645c21c2c4331ebd166a20ec23979d8e5926cf2b8209'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs