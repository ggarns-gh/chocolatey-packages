$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.272.0/databricks_cli_0.272.0_windows_amd64-signed.zip'
    checksum64     = '75f3d9f401d6b2e94b4dc2159b682888ff4cc2d9e86ecff98092b296f6c39ca5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs