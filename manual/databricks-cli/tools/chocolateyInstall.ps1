$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.217.1/databricks_cli_0.217.1_windows_amd64.zip'
    checksum64     = '426e0b45f6d501a2cf9b19d998ece59954bbc302cea2e7c11268a5ebb9893995'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs