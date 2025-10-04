$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.270.0/databricks_cli_0.270.0_windows_amd64-signed.zip'
    checksum64     = '62a62040376c80a272c8ff96da7ce3e5264c3fdadd6f53a2789a3b1d9bfa29d3'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs