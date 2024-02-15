$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.213.0/databricks_cli_0.213.0_windows_amd64.zip'
    checksum64     = '512fd1018223590a9cc3b84fac59a8bd21b6e79f835b81edbf11fb2fc46b525f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs