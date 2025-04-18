$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.248.0/databricks_cli_0.248.0_windows_amd64-signed.zip'
    checksum64     = '8828c2401ecca3e80ae89dfe8fc0bcf10619533712a96998266ba9a93fed06e2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs