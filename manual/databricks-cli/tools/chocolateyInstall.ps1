$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.226.0/databricks_cli_0.226.0_windows_amd64.zip'
    checksum64     = '70959f7d429d0a0db431b796cc9d8f43d53d18278274fed2829be31842aa16a6'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs