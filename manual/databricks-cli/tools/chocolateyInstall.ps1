$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.212.4/databricks_cli_0.212.4_windows_amd64.zip'
    checksum64     = 'b974058bc683cb66608af4e65aa0b77f9454a2c33bddd1d603f9bb1793740962'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs