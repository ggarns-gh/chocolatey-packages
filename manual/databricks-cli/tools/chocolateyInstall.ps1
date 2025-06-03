$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.253.0/databricks_cli_0.253.0_windows_amd64-signed.zip'
    checksum64     = '29a3c0ea4e2843b2ce64af19706c361fc259690dcb62f939c1a95167709aca88'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs