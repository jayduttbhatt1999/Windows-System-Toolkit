Write-Host "Checking for pending updates..."
Install-Module PSWindowsUpdate -Force -Scope CurrentUser
Import-Module PSWindowsUpdate
Get-WindowsUpdate -AcceptAll -IgnoreReboot