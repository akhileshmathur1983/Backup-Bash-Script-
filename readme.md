BASH SCRIPT FILE FOR DAILY SERVER BACKUP (LINUX SERVER)

7.Test a backup file:
tar -tzf /backup/daily/server_backup_$(date +"%Y-%m-%d").tar.gz

8. Optional: Remote Backup with rsync
rsync -avz /backup/daily/ user@remote_server:/remote/backup/daily/
