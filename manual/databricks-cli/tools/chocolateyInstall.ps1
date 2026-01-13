$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.282.0/databricks_cli_0.282.0_windows_amd64.zip'
    checksum64     = '7fd7e2ad42108cdbc5cf8a4fbc79778e50ae16d5a431a1d3a07ee6be9d15c077'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs