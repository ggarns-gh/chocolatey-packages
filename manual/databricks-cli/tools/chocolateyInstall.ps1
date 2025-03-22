$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.244.0/databricks_cli_0.244.0_windows_amd64-signed.zip'
    checksum64     = '1a901209dc60f4df48ffbd30caa2d78a5d29cdcec29457aeca5bdea47d94fc6c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs