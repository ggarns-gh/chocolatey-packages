$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url            = 'https://github.com/databricks/cli/releases/download/v0.209.1/databricks_cli_0.209.1_windows_386.zip'
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.209.1/databricks_cli_0.209.1_windows_amd64.zip'
    checksum       = 'dfab728616c327896a9cecf2ad982a3517d175e2658b0b98b8ab4c5cef69ee17'
    checksumType   = 'sha256'
    checksum64     = '49e8d9e1ab091df98ee91cd7949c851bbe441d756cfabcc8066d88e41909342b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs