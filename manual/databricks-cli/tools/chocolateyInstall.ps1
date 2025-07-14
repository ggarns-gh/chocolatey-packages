$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.258.0/databricks_cli_0.258.0_windows_amd64-signed.zip'
    checksum64     = '55e8c9bdb393ff13e86018c3b79f6720bbf2c80567dc7afd47cbdaf498e35af2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs