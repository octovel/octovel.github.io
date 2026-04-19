#!/usr/bin/env pwsh

# Copyright (c) Octovel
# Licensed under the MIT license

[CmdletBinding()]
param ()

Set-StrictMode -Version 3.0
$ErrorActionPreference = "Stop"

[System.String] $Org = "octovel"
[System.String] $Repo = "forgecli"

Write-Host "[$((Get-Date).ToString('HH:mm:ss'))] " -NoNewline -ForegroundColor DarkGray
Write-Host "[INFO] " -NoNewline -ForegroundColor Blue
Write-Host "The installation process has started."

# ----- Detect arch ----- #

[System.String] $Arch = switch ([System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture)
{
	"X64"
	{ "amd64"
	}
	"Arm64"
	{ "arm64"
	}
	default
	{
		Write-Host "[$((Get-Date).ToString('HH:mm:ss'))] " -NoNewline -ForegroundColor DarkGray
		Write-Host "[ERROR] " -NoNewline -ForegroundColor Red
		Write-Host "System architecture not supported by ForgeCLI."
		exit 1
	}
}

# ----- Download installer ----- #

[System.String] $Temp = Join-Path $env:TEMP ("forgecli" + [guid]::NewGuid())
New-Item -ItemType Directory -Force -Path $Temp | Out-Null

[System.String] $InstallerPath = Join-Path $Temp "forgecli-installer.exe"

try
{
	Invoke-WebRequest -URI "https://github.com/$Org/$Repo/releases/latest/download/forgecli-installer-windows-$Arch.exe" -OutFile $InstallerPath
} catch
{
	Remove-Item $Temp -Recurse -Force
	Write-Host "[$((Get-Date).ToString('HH:mm:ss'))] " -NoNewline -ForegroundColor DarkGray
	Write-Host "[ERROR] " -NoNewline -ForegroundColor Red
	Write-Host "Failed to download the installer. Please make sure you are connected to the Internet."
	exit 1
}

# ----- Run & cleanup ----- #

try
{
	& $InstallerPath
} finally
{
	Remove-Item $Temp -Recurse -Force
}
