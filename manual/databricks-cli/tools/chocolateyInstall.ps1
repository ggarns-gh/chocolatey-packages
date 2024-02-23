$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.214.1/databricks_cli_0.214.1_windows_amd64.zip'
    checksum64     = '48003dcd37b02d7247c1f681d046af0bb0847acffdc11bf3f9fbe28587b6a9d7'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs