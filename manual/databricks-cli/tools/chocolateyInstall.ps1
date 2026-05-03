$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.297.2/databricks_cli_0.297.2_windows_amd64.zip'
    checksum64     = 'c1de96403e88b37c6aaaaa231450813ce98f01e9ef12540bb34ba55cc031605c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs