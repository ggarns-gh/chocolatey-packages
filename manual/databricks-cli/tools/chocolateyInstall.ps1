$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.223.2/databricks_cli_0.223.2_windows_amd64.zip'
    checksum64     = 'f5c4854eea2429a9d1f9fced9626524cfacbe8bb12ae428beb34735d385145a2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs