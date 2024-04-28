$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.218.1/databricks_cli_0.218.1_windows_amd64.zip'
    checksum64     = 'a543532cc65f21a20b7ef1087dc6054704024e533cd2c58e46b5e4ea7a0e6907'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs