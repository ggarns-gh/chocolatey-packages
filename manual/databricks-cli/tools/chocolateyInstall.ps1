$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.263.0/databricks_cli_0.263.0_windows_amd64-signed.zip'
    checksum64     = '9bab2a9358baa03922ab99cfea79e077156444a6be8c718280baf8841d1ce028'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs