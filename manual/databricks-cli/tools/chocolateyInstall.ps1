$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.255.0/databricks_cli_0.255.0_windows_amd64-signed.zip'
    checksum64     = 'eafdfd56afcd6d9332f21b857cdef83dc0942368d7da6f3a6c6bcc813cec2d6b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs