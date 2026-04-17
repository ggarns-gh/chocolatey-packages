$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.295.0/databricks_cli_0.295.0_windows_amd64.zip'
    checksum64     = 'be10ae2a464c1e94f21a0db0215c61541adb222ee93f99df490390d5b7a4c58f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs