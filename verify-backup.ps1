$destination = "E:\Backup"

if (Test-Path $destination) {
    Write-Output "Backup folder exists."
}
else {
    Write-Output "Backup folder not found."
}
