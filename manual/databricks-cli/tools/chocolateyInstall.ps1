$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.234.0/databricks_cli_0.234.0_windows_amd64-signed.zip'
    checksum64     = '1a741f0ea478305d1372b4af57603020ab0796d337707bf43e99edb275c0799b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs