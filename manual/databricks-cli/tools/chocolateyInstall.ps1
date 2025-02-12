$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.241.0/databricks_cli_0.241.0_windows_amd64.zip'
    checksum64     = '7c2d985fdf2202b5181e9ba305943b178e788330c0d6b37f1570f188bbf887d7'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs