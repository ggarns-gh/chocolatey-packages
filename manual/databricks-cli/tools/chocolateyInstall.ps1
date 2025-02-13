$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.241.1/databricks_cli_0.241.1_windows_amd64.zip'
    checksum64     = '0107ad8f7063f9adc41270aef65458a3c63ab5e4c6a16e1f8ef489ef1d5b6021'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs