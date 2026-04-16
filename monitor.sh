#!/bin/bash

echo "===== System Monitoring Report ====="
echo "Date: $(date)"
echo ""

echo "---- CPU Usage ----"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'

echo ""
echo "---- Memory Usage ----"
free -h

echo ""
echo "---- Disk Usage ----"
df -h

echo ""
echo "---- Running Services ----"
systemctl list-units --type=service --state=running | head -10

echo ""
echo "Report saved to system_report.txt"

# Save report
{
echo "===== System Monitoring Report ====="
date
echo ""
free -h
echo ""
df -h
} > system_report.txt
