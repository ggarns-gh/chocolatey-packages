$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.281.0/databricks_cli_0.281.0_windows_amd64.zip'
    checksum64     = 'dbf224a96e129f96692c764235ab19e9d3db121cf0711dc6febee36462bddd58'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs