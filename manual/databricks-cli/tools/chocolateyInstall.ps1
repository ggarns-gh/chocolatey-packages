$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.241.2/databricks_cli_0.241.2_windows_amd64.zip'
    checksum64     = 'bb19a3a674270c0f2150a2fe8323ddcf77577658c23676fd36819d1962701a36'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs