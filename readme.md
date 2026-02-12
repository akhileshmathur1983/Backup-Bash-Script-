1. Backup Requirements
Backup critical directories: /etc , /var/www , /home , and /var/lib/mysql
Store backups in /backup/daily
Compress backups to save space
Automate the backup using cron

2. Create Backup Directory
sudo mkdir -p /backup/daily
sudo chown root:root /backup/daily
sudo chmod 700 /backup/daily

3.Make the Script Executable
sudo chmod +x /usr/local/bin/daily_backup.sh

4.Automate with Cron Job
Edit the cron jobs:
sudo crontab -e

5.Add the following line:
0 2 * * * /usr/local/bin/daily_backup.sh
#Explanation:
Runs the backup script daily at 2:00 AM


6.Verify Backup
List backup files:

#ls -lh /backup/daily

7.Test a backup file:
tar -tzf /backup/daily/server_backup_$(date +"%Y-%m-%d").tar.gz

8. Optional: Remote Backup with rsync
rsync -avz /backup/daily/ user@remote_server:/remote/backup/daily/
