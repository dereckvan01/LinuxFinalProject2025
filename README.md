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