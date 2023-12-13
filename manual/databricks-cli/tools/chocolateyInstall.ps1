$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.210.3/databricks_cli_0.210.3_windows_amd64.zip'
    checksum64     = '10d14e9bf97aae4d2287f63af4c090284fcad35f2db84648f119014a3000cb3a'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs