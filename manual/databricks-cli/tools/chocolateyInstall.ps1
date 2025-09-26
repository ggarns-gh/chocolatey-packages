$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.268.0/databricks_cli_0.268.0_windows_amd64-signed.zip'
    checksum64     = '6e4b37df6d4fc57350c6896dc2ab60c58fb0de7293ae6b66498e94ada72d13ae'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs