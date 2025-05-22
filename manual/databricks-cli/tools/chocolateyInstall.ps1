$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.251.0/databricks_cli_0.251.0_windows_amd64-signed.zip'
    checksum64     = 'a5690b4d28956a954c4dcc08457a4d56c0459189f072d9ab21ec0f7b8a289be8'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs