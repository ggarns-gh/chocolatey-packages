$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.291.0/databricks_cli_0.291.0_windows_amd64.zip'
    checksum64     = 'f9e3e13ab358f1fa3bab245ba77d6c1f8d36269de89842be8acdfcc96386104e'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs