$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.237.0/databricks_cli_0.237.0_windows_amd64-signed.zip'
    checksum64     = 'c0d908964af52d6bf1d358c7d7b46bcefab1a265dd8953ba474cb7f952f532bc'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs