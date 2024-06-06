$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.221.1/databricks_cli_0.221.1_windows_amd64.zip'
    checksum64     = '13fcd067d9db48eb3c17ffe8399b9c52b8144cf5645555ecadfd56b78d19fbd5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs