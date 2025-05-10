$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.250.0/databricks_cli_0.250.0_windows_amd64-signed.zip'
    checksum64     = 'd629df24b8e0dde26cec7aa0f08f1e5bd9db02a246acd8ef75ed433555f5d25f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs