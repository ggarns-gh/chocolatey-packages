$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.210.1/databricks_cli_0.210.1_windows_amd64.zip'
    checksum64     = '60f8c588647dd22daf14ff0ad20eec6d0aaf659180ee8aca526b0ad4f4f7684b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs