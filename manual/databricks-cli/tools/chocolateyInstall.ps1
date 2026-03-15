$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.289.1/databricks_cli_0.289.1_windows_amd64.zip'
    checksum64     = 'b2e1336872342305c8befcf67e08a4381191608232665cb20e9ce020b8740cb0'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs