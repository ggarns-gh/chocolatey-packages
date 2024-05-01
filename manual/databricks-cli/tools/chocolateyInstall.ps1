$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.219.0/databricks_cli_0.219.0_windows_amd64.zip'
    checksum64     = 'd21918a9d63787989e8362015533441a5cd6d3e1ac1771a72f68ea0a93ce4dfe'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs