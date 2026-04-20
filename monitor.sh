#!/bin/bash

LOG_FILE="system_report.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "========== System Monitoring Report =========="
echo "Date: $TIMESTAMP"
echo ""

# CPU Usage
echo "_____ CPU Usage _____"
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "CPU Usage: $CPU%"
echo ""

# Memory Usage
echo "_____ Memory Usage _____"
free -h
echo ""

# Disk Usage
echo "_____ Disk Usage _____"
df -h
echo ""

# Running Services
echo "_____ Running Services _____"
systemctl list-units --type=service --state=running | head -10
echo ""

# Save report to file
{
echo "========== System Monitoring Report =========="
echo "Date: $TIMESTAMP"
echo "CPU Usage: $CPU%"
echo ""
free -h
echo ""
df -h
echo ""
systemctl list-units --type=service --state=running | head -10
echo "---------------------------------------------"
} >> $LOG_FILE

echo "Report saved to $LOG_FILE"
