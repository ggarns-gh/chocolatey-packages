$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.271.0/databricks_cli_0.271.0_windows_amd64-signed.zip'
    checksum64     = '152f51506e29f96d659759382187c1e5ad81616623c05d4085ae33d1eb32766b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs