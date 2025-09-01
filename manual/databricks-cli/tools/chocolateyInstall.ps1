$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.266.0/databricks_cli_0.266.0_windows_amd64-signed.zip'
    checksum64     = '47aa0fec5cbb41a301c1299e0c317766132e6f6cd463b03584999f6f7a8a5959'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs