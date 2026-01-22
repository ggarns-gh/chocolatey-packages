$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.283.0/databricks_cli_0.283.0_windows_amd64.zip'
    checksum64     = 'ccd10758b427f631757a687f4947e79ef1e3e183148f7f9bd5f868784928a631'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs