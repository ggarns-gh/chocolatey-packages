$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.262.0/databricks_cli_0.262.0_windows_amd64-signed.zip'
    checksum64     = '68776bd8a882a59e2a7a78f3e5a407d750d7d4e638d23395debe6b0a19d40c48'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs