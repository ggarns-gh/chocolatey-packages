$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.279.0/databricks_cli_0.279.0_windows_amd64.zip'
    checksum64     = 'f5c5d399595c62dc253f0ad350a6cf4541d8384c3c35af57a744085747c67b18'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs