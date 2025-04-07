$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.246.0/databricks_cli_0.246.0_windows_amd64.zip'
    checksum64     = 'fbcca799987949d1c7c0c9704c316c7bffb3bca7d0d4079fcd50363321c6894d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs