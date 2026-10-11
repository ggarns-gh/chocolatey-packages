$ErrorActionPreference = 'Stop'

. $PSScriptRoot/config.ps1

$packageArgs = @{
    packageName    = 'databricks-cli'
    unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
    url64bit       = $url64bit
    checksum64     = $checksum64
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs