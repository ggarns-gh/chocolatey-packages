$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.288.0/databricks_cli_0.288.0_windows_amd64.zip'
    checksum64     = '4de650673384d20e4ac03da4ff12c7c7bb16bcfab5d3b8c6e54e2709b2a52595'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs