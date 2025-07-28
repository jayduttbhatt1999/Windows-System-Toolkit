$services = @("wuauserv", "WinDefend", "wscsvc")
foreach ($service in $services) {
    $status = Get-Service -Name $service
    Write-Host "$($status.DisplayName): $($status.Status)"
}
