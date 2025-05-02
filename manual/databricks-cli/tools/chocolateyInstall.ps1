$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.249.0/databricks_cli_0.249.0_windows_amd64-signed.zip'
    checksum64     = '05aea83bd6cc3c9597bb9004e9672481017a14c59c4ac6981ca61a5fafc6dd5a'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs