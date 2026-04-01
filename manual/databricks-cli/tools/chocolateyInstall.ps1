$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.290.1/databricks_cli_0.290.1_windows_amd64.zip'
    checksum64     = '005ff88a3229bef356f895e37ee91fba8cf725351871656435d5fd7ef89248e8'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs