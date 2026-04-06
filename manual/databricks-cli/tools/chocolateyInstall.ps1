$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.292.0/databricks_cli_0.292.0_windows_amd64.zip'
    checksum64     = '14de87368dad80892ec793494877a59317e7fb4522c87cd7cf4e093b09aa2fb2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs