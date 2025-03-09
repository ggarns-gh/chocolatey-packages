$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.243.0/databricks_cli_0.243.0_windows_amd64-signed.zip'
    checksum64     = 'c055b1bb3106cd47eec84c889a4817bc43beae3054902790d9b8f99039e9c354'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs