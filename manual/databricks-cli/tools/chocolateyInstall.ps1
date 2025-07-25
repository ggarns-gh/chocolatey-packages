$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.261.0/databricks_cli_0.261.0_windows_amd64-signed.zip'
    checksum64     = '3e15b964c06c45418b44cb1a3332daaecaac1511b886c3b79df5262ee0952b6c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs