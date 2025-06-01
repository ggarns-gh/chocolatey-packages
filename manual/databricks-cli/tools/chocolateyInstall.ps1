$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.252.0/databricks_cli_0.252.0_windows_amd64-signed.zip'
    checksum64     = 'b3417c4834e5872fbf518c71ec7f14d18c0d7584bc20686c30a59b6dd4dcdbfd'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs