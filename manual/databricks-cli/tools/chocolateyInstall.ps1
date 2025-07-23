$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.259.0/databricks_cli_0.259.0_windows_amd64-signed.zip'
    checksum64     = 'fef9657497054fc127f62c1fa5ebe3ff0f4cbe46fd94e4b1770212c9cfdcd29d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs