$ErrorActionPreference = 'Stop'

$packageName = 'databricks-cli'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = 'https://github.com/databricks/cli/releases/download/v0.296.1/databricks_cli_0.296.1_windows_amd64.zip'
    checksum64     = '6650fe28a98ddc24a5042857b5b24029aeed01775fbb386a0bcfda22acefcf4e'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs