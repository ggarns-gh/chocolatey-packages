$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.212.3/databricks_cli_0.212.3_windows_amd64.zip'
    checksum64     = '876407838cf95be8a92d64abf09680beac24cd8071fbe78f26e7b59b99ad1c35'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs