# Generate a simple backup report

$ReportPath = "backup-report.txt"
$BackupPath = "E:\Backup"
$ReportDate = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

if (Test-Path $BackupPath) {
    $FileCount = (Get-ChildItem -Path $BackupPath -File -Recurse).Count
    $Status = "SUCCESS"
}
else {
    $FileCount = 0
    $Status = "BACKUP PATH NOT FOUND"
}

@"
Backup Report
=============

Report Date : $ReportDate
Backup Path : $BackupPath
File Count  : $FileCount
Result      : $Status
"@ | Out-File -FilePath $ReportPath -Encoding UTF8

Write-Output "Backup report generated: $ReportPath"
