$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.220.0/databricks_cli_0.220.0_windows_amd64.zip'
    checksum64     = 'daa07f0689e42c5d6de410b1962058e848a53ba774ec5f98f64179d0f6c1e35d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs