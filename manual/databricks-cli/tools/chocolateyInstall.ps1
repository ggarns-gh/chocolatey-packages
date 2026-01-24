$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.284.0/databricks_cli_0.284.0_windows_amd64.zip'
    checksum64     = 'fa59f69921154b74867840317387ad150ac4443ee4badfaa2cd8647d22a61670'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs