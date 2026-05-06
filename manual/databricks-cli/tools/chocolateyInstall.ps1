$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.298.0/databricks_cli_0.298.0_windows_amd64.zip'
    checksum64     = '3292a6f918e202bc5e77d4a32ab8a0693bccd6b64760f14074809c4249a37ad0'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs