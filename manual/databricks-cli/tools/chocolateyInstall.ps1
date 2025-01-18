$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.239.0/databricks_cli_0.239.0_windows_amd64-signed.zip'
    checksum64     = 'd55c0029fd6b8b2a639188c77e5da100a4defa08bebd1eb3f19e031a857bd9dc'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs