Write-Host "=== System Health Report ==="
Get-WmiObject Win32_Processor | ForEach-Object {
    Write-Host "CPU Load: $($_.LoadPercentage)%"
}
Get-WmiObject Win32_OperatingSystem | ForEach-Object {
    $totalMem = $_.TotalVisibleMemorySize / 1MB
    $freeMem = $_.FreePhysicalMemory / 1MB
    Write-Host "Total RAM: {0:N2} GB" -f $totalMem
    Write-Host "Free RAM: {0:N2} GB" -f $freeMem
}
Get-PSDrive -PSProvider 'FileSystem' | ForEach-Object {
    Write-Host "$($_.Name): $($_.Free / 1GB -as [int]) GB free of $($_.Used + $_.Free / 1GB -as [int]) GB"
}
