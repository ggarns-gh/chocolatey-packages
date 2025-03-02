$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.242.0/databricks_cli_0.242.0_windows_amd64-signed.zip'
    checksum64     = '5263e17f41f8eaf62e165ef68d27d913ac9817615e5e8f0c90201094f6814bac'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs