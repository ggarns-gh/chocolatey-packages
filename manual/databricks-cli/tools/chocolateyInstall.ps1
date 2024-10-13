$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.230.0/databricks_cli_0.230.0_windows_amd64-signed.zip'
    checksum64     = 'ffc4f9373dfc40af806d5e4a9e5f8187f6a8820d8840ed74f444cf02fe97a028'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs