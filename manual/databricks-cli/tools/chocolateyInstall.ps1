$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.236.0/databricks_cli_0.236.0_windows_amd64-signed.zip'
    checksum64     = '25083bb5001ba973a729ffaad227857d0e9718f9dce288002e99f3a3e2dba51f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs