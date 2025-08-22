# ZenDent Dev VM Setup Script
# This script installs development tools and OpenDental Trial on a Windows VM

# Helper: Download and install EXE
function Install-FromExe {
  param(
    [string]$Url,
    [string]$Args
  )
  $filename = "$env:TEMP\$(Split-Path $Url -Leaf)"
  Invoke-WebRequest -Uri $Url -OutFile $filename
  Start-Process -FilePath $filename -ArgumentList $Args -Wait -NoNewWindow
}

# Helper: Download and install MSI
function Install-FromMsi {
  param(
    [string]$Url
  )
  $filename = "$env:TEMP\$(Split-Path $Url -Leaf)"
  Invoke-WebRequest -Uri $Url -OutFile $filename
  Start-Process msiexec.exe -ArgumentList "/i $filename /quiet /norestart" -Wait
}

# Install .NET SDK 8
Install-FromExe -Url "https://download.visualstudio.microsoft.com/download/pr/8f300b2f-0e7f-4bb7-9f76-b07d60ed2798/6ceef7d4c3d4a34483374e25151c08c6/dotnet-sdk-8.0.204-win-x64.exe" -Args "/quiet /norestart"

# Install Git for Windows
Install-FromExe -Url "https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe" -Args "/VERYSILENT /NORESTART"

# Install MySQL Workbench
Install-FromMsi -Url "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.36-winx64.msi"

# Install Visual Studio 2022 with Desktop workload
$vsInstaller = "$env:TEMP\vs_installer.exe"
Invoke-WebRequest -Uri "https://aka.ms/vs/17/release/vs_community.exe" -OutFile $vsInstaller
Start-Process -FilePath $vsInstaller -ArgumentList "--quiet --wait --norestart --add Microsoft.VisualStudio.Workload.ManagedDesktop --includeRecommended" -Wait

# Download and install OpenDental Trial
$openDentalInstaller = "$env:TEMP\OpenDentalSetup.exe"
Invoke-WebRequest -Uri "https://opendental.com:1942/ODDownload/Trial/OpenDentalSetup.exe" -OutFile $openDentalInstaller
Start-Process -FilePath $openDentalInstaller -ArgumentList "/S" -Wait

Write-Output "✅ ZenDent Dev VM setup complete. Reboot if needed."