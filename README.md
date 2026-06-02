# Windows IT Admin Backup Toolkit

A lightweight PowerShell toolkit for Windows IT administrators and MIS teams.

This project helps small businesses create scheduled local backups, verify backup results, and reduce data-loss risk.

## Features

- Scheduled local folder backup
- Backup verification
- PowerShell-based automation
- Simple JSON configuration
- Designed for MIS and IT admin daily operations

## Use Case

This toolkit is designed for small business IT administrators who need a simple and auditable way to back up important folders from one local disk to another.

## Roadmap

- Add backup log report
- Add email notification
- Add restore test checklist
- Add Windows Event Log integration

## Installation

1. Download the repository.
2. Configure the backup path in config.example.json.
3. Run install-task.ps1 as Administrator.
4. Verify backup status using verify-backup.ps1.

## Requirements

- Windows 10 or Windows 11
- PowerShell 5.1 or later
- Administrator privileges

## Disclaimer

This project is provided as-is without warranty. Users should test backup and restore procedures before using in production environments.
