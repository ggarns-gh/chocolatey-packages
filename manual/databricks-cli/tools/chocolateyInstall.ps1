$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.212.0/databricks_cli_0.212.0_windows_amd64.zip'
    checksum64     = '362d731c8c1d3dba583b5305a6159771e1bf450cb0c18d31b7e56fa919c5d479'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs