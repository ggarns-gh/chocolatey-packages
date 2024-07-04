$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.223.1/databricks_cli_0.223.1_windows_amd64-signed.zip'
    checksum64     = '6ca60917bd963682c861715f9e6812257ce1e94a8d959891a47850e31e1e9f56'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs