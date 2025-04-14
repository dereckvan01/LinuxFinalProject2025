#!/bin/bash

# backup_logs.sh - Backup /home directories to NFS remote share

LOGFILE="/var/log/backup_logs.log"
BACKUP_DST="/mnt/remote_backup/workstation_backups"
DATE=$(date "+%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DST"

echo "[$(date)] Starting backup..." >> "$LOGFILE"

for user in /home/*; do
    username=$(basename "$user")
    tar czf "$BACKUP_DST/${username}_home_$DATE.tar.gz" "$user" >> "$LOGFILE" 2>&1
    echo "[$(date)] Backed up $user" >> "$LOGFILE"
done

echo "[$(date)] Backup completed." >> "$LOGFILE"
