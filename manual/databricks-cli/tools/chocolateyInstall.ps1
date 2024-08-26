$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.227.0/databricks_cli_0.227.0_windows_amd64.zip'
    checksum64     = '1e0fe45f2f914dc99a9a636fd32ff2ffebb6cdf33ccd9a4763d22020a5e48e8e'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs