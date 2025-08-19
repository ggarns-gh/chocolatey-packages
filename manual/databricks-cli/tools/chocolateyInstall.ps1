$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.264.0/databricks_cli_0.264.0_windows_amd64-signed.zip'
    checksum64     = 'b75352ce80346e31fdb69c556daa21d7eec283751c60fe0864c2ab5b58b495d9'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs