$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.254.0/databricks_cli_0.254.0_windows_amd64-signed.zip'
    checksum64     = '9582d48d37879f690216a12e1a2391f101b7521c4af526e3f68e8f09a0b548bd'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs