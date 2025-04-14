# LinuxFinalProject2025
build a Linux server that meets the following requirements, implement security best practices, and document the setup.

    Automated Script Management (System Maintenance)
Tasks:
    • Write a Bash script that performs system maintenance, including:
        ◦ Updating software packages (dnf or apt)
        ◦ Removing unnecessary files (e.g., old log files) (find + rm)
        ◦ Checking disk usage (df, du)
        ◦ Checking for failed SSH login attempts (grep auth.log)
        ◦ Logging all actions to a dedicated log file
    Scheduling Future Tasks (Automation)
Tasks:
    • Create a cron job to run the maintenance script daily at 3 AM
    • Set up a systemd timer as an alternative method
    • Write a short report comparing cron and systemd timers


    Local and Remote Storage Configuration
Tasks:
    • Configure a Logical Volume Manager (LVM) setup with at least two partitions on your workstation (using the additional drives on your workstation VM)
    • Mount a remote NFS share from the server as a backup location for your workstation
    • Create a backup script that copies user home directories to the remote share
    
    Log Analysis and Remote Storage
Tasks:
    • Configure rsyslog to forward logs to a remote server
    • Use journalctl, awk, grep, or sed to extract key log events, such as:
        ◦ Failed SSH login attempts
        ◦ Service failures
        ◦ System reboots
    • Set up log rotation using logrotate

    Service Deployment and Hardening
Tasks:
    • 
    • Deploy an Nginx or Apache web server, configure a simple web page, and enable secure access using firewall rules
    • Deploy an SFTP server for file transfers (use sftp via OpenSSH)
    • (Optional) Integrate with Microsoft 365:
        ◦ Configure Postfix or Exim to send system-generated emails to Microsoft 365


    Monitoring and Reporting
Tasks:
    • Install and configure Glances, htop, or Nagios/Zabbix for real-time system monitoring
    • Write a script (health_check.sh) that generates a system health report, including:
        ◦ Uptime
        ◦ CPU and memory usage
        ◦ Disk space usage
        ◦ Recent logins