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