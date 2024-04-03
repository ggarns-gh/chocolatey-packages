$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.217.0/databricks_cli_0.217.0_windows_amd64.zip'
    checksum64     = '48a27c25df407a3d4e2e6e1480ca59a609e800bcf072b20997191411ebf177f9'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs