$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.225.0/databricks_cli_0.225.0_windows_amd64.zip'
    checksum64     = '51998e09684273cc4b39d4d9d1634fb7722284b0e941cb56fff5228f08789077'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs