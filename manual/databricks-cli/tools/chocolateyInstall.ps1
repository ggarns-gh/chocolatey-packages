$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.299.2/databricks_cli_0.299.2_windows_amd64.zip'
    checksum64     = '8b609982e5f0a78d33207e406af1d3de096d239d3bd2f56c1c84f2c2fa4c7600'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs