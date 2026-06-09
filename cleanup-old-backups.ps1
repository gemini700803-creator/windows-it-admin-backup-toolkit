# Delete backup files older than 30 days

$BackupPath = "C:\Backups"
$RetentionDays = 30

Get-ChildItem -Path $BackupPath -File |
Where-Object {
    $_.LastWriteTime -lt (Get-Date).AddDays(-$RetentionDays)
} |
Remove-Item -Force

Write-Host "Old backup files removed successfully."
