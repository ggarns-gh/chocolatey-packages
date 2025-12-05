$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.278.0/databricks_cli_0.278.0_windows_amd64.zip'
    checksum64     = '9ff3f1c5eba76e550873fc541878beabb35f6a5288d84b2e828afc1e30102a2d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs