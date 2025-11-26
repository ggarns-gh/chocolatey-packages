$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.277.0/databricks_cli_0.277.0_windows_amd64.zip'
    checksum64     = 'a61742477195546ee20c575d16bce627ceb915ff28832257bf31c94531a92bb2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs