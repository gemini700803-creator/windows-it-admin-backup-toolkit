$source = "C:\Users\Public\Documents"
$destination = "E:\Backup"
$logFile = "backup.log"

if (!(Test-Path $destination)) {
    New-Item -ItemType Directory -Path $destination
}

robocopy $source $destination /MIR /R:2 /W:5 /LOG:$logFile

Write-Output "Backup completed."
