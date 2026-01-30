$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.286.0/databricks_cli_0.286.0_windows_amd64.zip'
    checksum64     = '7aa6323e8f205ba40fa2fbef25c9115d24bdf6b4d9918f21197bc42b51a7c1b4'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs