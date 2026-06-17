$ErrorActionPreference = "Continue"

function Test-Command {
    param(
        [Parameter(Mandatory = $true)]
        [string] $Name,
        [string] $FallbackPath
    )

    $cmd = Get-Command $Name -ErrorAction SilentlyContinue
    if ($cmd) {
        $version = & $cmd.Source --version 2>&1
        [PSCustomObject]@{
            Tool = $Name
            Status = "OK"
            Version = ($version | Select-Object -First 1)
            Path = $cmd.Source
        }
        return
    }

    if ($FallbackPath -and (Test-Path -LiteralPath $FallbackPath)) {
        $version = & $FallbackPath --version 2>&1
        [PSCustomObject]@{
            Tool = $Name
            Status = "OK via fallback path"
            Version = ($version | Select-Object -First 1)
            Path = $FallbackPath
        }
        return
    }

    [PSCustomObject]@{
        Tool = $Name
        Status = "Missing"
        Version = ""
        Path = ""
    }
}

$results = @(
    Test-Command -Name "aws" -FallbackPath "C:\Program Files\Amazon\AWSCLIV2\aws.exe"
    Test-Command -Name "python"
    Test-Command -Name "git"
)

$results | Format-Table -AutoSize

$awsPath = "C:\Program Files\Amazon\AWSCLIV2\aws.exe"
$awsCommand = Get-Command aws -ErrorAction SilentlyContinue
if ($awsCommand) {
    Write-Host ""
    Write-Host "AWS configure status:"
    aws configure list
} elseif (Test-Path -LiteralPath $awsPath) {
    Write-Host ""
    Write-Host "AWS configure status:"
    & $awsPath configure list
} else {
    Write-Host ""
    Write-Host "AWS CLI is not installed."
}
