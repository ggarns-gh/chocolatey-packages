$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.267.0/databricks_cli_0.267.0_windows_amd64-signed.zip'
    checksum64     = '29f983fd25a19a7ba3cfbe9e8e50776a4a31b2dda558501702f197ace5dcacc2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs