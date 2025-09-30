$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.269.0/databricks_cli_0.269.0_windows_amd64-signed.zip'
    checksum64     = '96418b7e295e290e665ba02f9434b20e87e25098e9fc17f5473676f504c864aa'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs