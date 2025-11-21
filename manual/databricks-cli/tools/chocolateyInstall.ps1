$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.276.0/databricks_cli_0.276.0_windows_amd64-signed.zip'
    checksum64     = 'b997d1ba0eb0fcb16bcd9cc93f0439f9fa0c28274be5480c43b0195e216536e0'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs