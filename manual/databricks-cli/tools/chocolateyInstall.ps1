$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.228.0/databricks_cli_0.228.0_windows_amd64.zip'
    checksum64     = '1b73b84363dfc96627f0c61cb2eeee633712b2a4e469b768377f4f297069faa0'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs