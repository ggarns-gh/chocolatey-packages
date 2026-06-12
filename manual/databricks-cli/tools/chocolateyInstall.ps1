$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v1.2.1/databricks_cli_1.2.1_windows_amd64.zip'
    checksum64     = 'a8a26891932c554736efa045a9546a3df4167ebca88a3cdff9bc4e0b3578e36a'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs