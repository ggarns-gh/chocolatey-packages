$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.296.0/databricks_cli_0.296.0_windows_amd64.zip'
    checksum64     = '50ff2d61dc375b08b899fcf8e79fb4a5ea78c76ed53c58cdd7064be9eafc4164'
    checksumType64 = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs