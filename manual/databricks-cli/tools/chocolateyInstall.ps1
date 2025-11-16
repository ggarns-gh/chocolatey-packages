$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.275.0/databricks_cli_0.275.0_windows_amd64-signed.zip'
    checksum64     = 'ae4aaa9bd30a5dd07d6d4eb34726cb110beba4cdbe945d769fbf31f6a2b5a6f9'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs