$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.224.1/databricks_cli_0.224.1_windows_amd64.zip'
    checksum64     = 'a95e57114b3a76292474cd8f080a3e66f45756a291a56835f49c7046f7feaf3d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs