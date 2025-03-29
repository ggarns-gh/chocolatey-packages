$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.245.0/databricks_cli_0.245.0_windows_amd64.zip'
    checksum64     = 'a45664bc67c74d74ba9cd1c52cde6cf03715cd41f0d9a551202d7b8c5bf3e0cc'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs