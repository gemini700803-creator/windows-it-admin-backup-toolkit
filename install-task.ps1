$TaskName = "Windows IT Admin Backup"

$Action = New-ScheduledTaskAction `
-Execute "powershell.exe" `
-Argument "-ExecutionPolicy Bypass -File `"$PSScriptRoot\backup.ps1`""

$Trigger = New-ScheduledTaskTrigger `
-Daily `
-At 2:00AM

Register-ScheduledTask `
-TaskName $TaskName `
-Action $Action `
-Trigger $Trigger `
-Description "Daily backup task" `
-Force

Write-Output "Scheduled task created successfully."
