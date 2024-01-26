$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.212.2/databricks_cli_0.212.2_windows_amd64.zip'
    checksum64     = 'ab63749f5231a1a2b313baf057cb354ec75f15fc71003514576b74de4ac1f8f5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs