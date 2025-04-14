#!/bin/bash

LOG_FILE="/var/log/system_health.log"
THRESHOLD=80  # Alerta si disco usa más de 80%

echo "==== System Health Report - $(date) ====" > $LOG_FILE
echo "" >> $LOG_FILE

# Uptime
echo "Uptime:" >> $LOG_FILE
uptime >> $LOG_FILE
echo "" >> $LOG_FILE

# CPU and memory usage
echo "CPU and Memory Usage:" >> $LOG_FILE
top -b -n1 | head -5 >> $LOG_FILE
echo "" >> $LOG_FILE

# Disk usage
echo "Disk Usage:" >> $LOG_FILE
df -h >> $LOG_FILE
echo "" >> $LOG_FILE

# Recent logins
echo "Recent Logins:" >> $LOG_FILE
last -n 5 >> $LOG_FILE
echo "" >> $LOG_FILE

# Optional: Check disk threshold
USAGE=$(df / | awk 'NR==2 {gsub("%",""); print $5}')
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is over ${THRESHOLD}%!" >> $LOG_FILE
    echo "Disk usage critical: $USAGE%" | mail -s "ALERTA: Espacio en disco alto" tu_correo@dominio.com
fi
