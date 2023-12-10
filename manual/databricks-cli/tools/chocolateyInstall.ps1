$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.210.0/databricks_cli_0.210.0_windows_amd64.zip'
    checksum64     = 'ddf37ac5cb21329968e9937bd95e373197f6ba6b79914c5b8dd0417b1e385262'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs