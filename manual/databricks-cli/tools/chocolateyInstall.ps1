$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v1.2.0/databricks_cli_1.2.0_windows_amd64.zip'
    checksum64     = 'd649ee26b93e7790e7356aabe50b6e65db559d9cfd98d5582678f4998730884d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs