$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.232.1/databricks_cli_0.232.1_windows_amd64-signed.zip'
    checksum64     = 'a841eb98ad1df8c184065b78d65a925cb18e1adaa0da0f4f80750694d9b895d5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs