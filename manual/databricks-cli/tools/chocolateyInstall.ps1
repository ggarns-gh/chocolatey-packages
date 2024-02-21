$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.214.0/databricks_cli_0.214.0_windows_amd64.zip'
    checksum64     = '27318076c465b97f1649334f9b2f397b7a71257ee666869c87e55fb3871016ba'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs