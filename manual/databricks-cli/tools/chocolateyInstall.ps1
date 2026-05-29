$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v1.1.0/databricks_cli_1.1.0_windows_amd64.zip'
    checksum64     = '6ad03d25d1a2790bd68f9e93128b329a6ac50263a7b023c1fb2263c54b4e6e1b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs