$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.238.0/databricks_cli_0.238.0_windows_amd64-signed.zip'
    checksum64     = 'a06d1b1860a44cc237de7f7948384d28f46d459f8f4a6e6faa30bb996cfc0d95'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs