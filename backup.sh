#!/bin/bash
# backup.sh - Automated System Backup Script

BACKUP_SRC="$HOME/Documents"
BACKUP_DEST="$HOME/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DEST"
tar -czf "$BACKUP_DEST/backup_$DATE.tar.gz" "$BACKUP_SRC"

echo "Backup completed successfully!"
echo "Backup stored at: $BACKUP_DEST/backup_$DATE.tar.gz"
