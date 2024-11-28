$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.235.0/databricks_cli_0.235.0_windows_amd64-signed.zip'
    checksum64     = 'cc0efb89ad1ecdf5a112d0104e5817ceff5d2e7b2fcda54f52db559a11ad4fed'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs