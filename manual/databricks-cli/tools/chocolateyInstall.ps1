$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.265.0/databricks_cli_0.265.0_windows_amd64-signed.zip'
    checksum64     = '2e5ca59b69d2530a6cf2388637e47bcabc72f587ce11d2fe868b3683c7fb4c2a'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs