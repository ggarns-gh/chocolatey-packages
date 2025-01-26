$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.239.1/databricks_cli_0.239.1_windows_amd64-signed.zip'
    checksum64     = 'df6dd207bc6e0583f6b7e2ff619a90c31f721c8f47299ec22d16fb98a735b112'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs