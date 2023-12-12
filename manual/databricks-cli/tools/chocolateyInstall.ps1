$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.210.2/databricks_cli_0.210.2_windows_amd64.zip'
    checksum64     = 'add410b11e8146f2cfe3124b2fd0d1fda2defb37155ffe689c9f5e2d4e2aa096'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs