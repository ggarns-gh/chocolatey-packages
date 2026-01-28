$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.285.0/databricks_cli_0.285.0_windows_amd64.zip'
    checksum64     = 'f3cfc985c3657ff478b285885630ec2205f13d1363fedaa7b86d837530257a4c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs