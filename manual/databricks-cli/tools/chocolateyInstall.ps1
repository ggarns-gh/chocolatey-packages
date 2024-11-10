$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.233.0/databricks_cli_0.233.0_windows_amd64-signed.zip'
    checksum64     = 'b2e8feed6b93537d825dbf433cfa7b532bf0b461bb26eb1ee69713743fcd1c0d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs