$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.257.0/databricks_cli_0.257.0_windows_amd64-signed.zip'
    checksum64     = '807a472219d263e850d25a3d8c9eeee3db5dd76b22b421da96c0e9e638e4b491'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs