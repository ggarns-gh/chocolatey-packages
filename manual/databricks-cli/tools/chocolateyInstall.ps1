$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.224.0/databricks_cli_0.224.0_windows_amd64.zip'
    checksum64     = 'c752b98e5850c2a9ae36edf98c781ad6f7e95f7eeb766963f27722dbae3c16e6'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs