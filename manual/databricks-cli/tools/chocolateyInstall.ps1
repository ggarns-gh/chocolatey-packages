$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.211.0/databricks_cli_0.211.0_windows_amd64.zip'
    checksum64     = '109fc69e0b1849276e33695ed9c51387f6fb9cb43046e932238d937fced14f2f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs