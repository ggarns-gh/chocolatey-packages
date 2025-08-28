$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.264.2/databricks_cli_0.264.2_windows_amd64-signed.zip'
    checksum64     = '5a0834163df128f1cebdb9e6c3f4f2063c33e65bcf8ec2408ec817432dec81ec'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs