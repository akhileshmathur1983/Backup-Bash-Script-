Create a script /usr/local/bin/daily_backup.sh :


#!/bin/bash
# Variables
BACKUP_DIR="/backup/daily"
DATE=$(date +"%Y-%m-%d")
# Directories to backup
DIRS="/etc /var/www /home /var/lib/mysql"
# Create a compressed backup
tar -czf "$BACKUP_DIR/server_backup_$DATE.tar.gz" $DIRS
# Delete backups older than 7 days
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm -f {} \;
