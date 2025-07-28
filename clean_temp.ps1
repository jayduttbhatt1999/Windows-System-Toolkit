$temp = "$env:TEMP\*"
Write-Host "Cleaning temp files in $temp"
Remove-Item -Path $temp -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Temp files deleted."
