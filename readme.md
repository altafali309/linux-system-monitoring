# 🐧 Linux System Monitoring Script

A lightweight Bash-based monitoring tool designed to track system performance metrics such as CPU usage, memory utilization, disk usage, and running services.

The script logs system data with timestamps, enabling basic observability and troubleshooting in Linux environments.

---

## 🧠 Project Overview

This project was built to understand how system monitoring works at a low level using shell scripting and how automation can be implemented using cron jobs.

It simulates a basic monitoring workflow similar to what system administrators use in real environments.

---

## ⚙️ Features

* CPU usage monitoring
* Memory utilization tracking
* Disk usage analysis
* Running services inspection
* Timestamp-based logging
* Automated execution using cron jobs

---

## 🛠️ Technologies Used

* Linux (Ubuntu)
* Bash (Shell Scripting)

---

## 📂 Project Structure

```text
linux-system-monitoring/
│
├── monitor.sh
├── logs/
│   └── system.log
└── README.md
```

---

## 📊 Sample Output

```bash
========== System Monitoring Report ==========
Date: 2026-04-20 23:07:25

_____ CPU Usage _____
CPU Usage: 0%

_____ Memory Usage _____
               total        used        free      shared  buff/cache   available
Mem:           7.6Gi       538Mi       7.0Gi       3.8Mi       280Mi       7.1Gi
Swap:          2.0Gi          0B       2.0Gi

_____ Disk Usage _____
Filesystem      Size  Used Avail Use% Mounted on
none            3.9G     0  3.9G   0% /usr/lib/modules/6.6.87.2-microsoft-standard-WSL2
none            3.9G  4.0K  3.9G   1% /mnt/wsl
drivers         475G  169G  306G  36% /usr/lib/wsl/drivers
/dev/sdd       1007G  2.5G  954G   1% /
none            3.9G  124K  3.9G   1% /mnt/wslg
none            3.9G     0  3.9G   0% /usr/lib/wsl/lib
rootfs          3.9G  2.7M  3.9G   1% /init
none            3.9G  568K  3.9G   1% /run
none            3.9G     0  3.9G   0% /run/lock
none            3.9G     0  3.9G   0% /run/shm
none            3.9G   76K  3.9G   1% /mnt/wslg/versions.txt
none            3.9G   76K  3.9G   1% /mnt/wslg/doc
C:\             475G  169G  306G  36% /mnt/c
tmpfs           3.9G   16K  3.9G   1% /run/user/1000
tmpfs           784M   16K  784M   1% /run/user/0

_____ Running Services _____
  UNIT                        LOAD   ACTIVE SUB     DESCRIPTION
  console-getty.service       loaded active running Console Getty
  containerd.service          loaded active running containerd container runtime
  cron.service                loaded active running Regular background program processing daemon
  dbus.service                loaded active running D-Bus System Message Bus
  docker.service              loaded active running Docker Application Container Engine
  getty@tty1.service          loaded active running Getty on tty1
  nginx.service               loaded active running A high performance web server and a reverse proxy server
  rsyslog.service             loaded active running System Logging Service
  systemd-journald.service    loaded active running Journal Service

Report saved to system_report.log
```

---

## 🚀 How to Run

Make script executable:

```bash
chmod +x monitor.sh
```

Run manually:

```bash
./monitor.sh
```

---

## ⏱️ Automation with Cron

Edit crontab:

```bash
crontab -e
```

Add:

```bash
*/5 * * * * /full/path/monitor.sh
```

This runs the script every 5 minutes.

---

## 📌 Use Case

This script can be used by system administrators to:

* Monitor server performance
* Identify high resource usage
* Track system behavior over time
* Assist in troubleshooting production issues

---

## 🧠 Key Learnings

* Understanding Linux system resource monitoring
* Writing structured Bash scripts
* Automating tasks using cron
* Logging system metrics for analysis
* Debugging scripts running in background environments

---

## 🔥 Improvements Implemented

* Added timestamp-based logging for better traceability
* Structured output for readability
* Integrated automation using cron jobs
* Included running services inspection

---

## 🚀 Future Improvements

* Add alerting system for high CPU/memory usage
* Send logs via email or webhook
* Integrate with monitoring tools (Prometheus, Grafana)

---

This project helped strengthen my Linux fundamentals and introduced me to real-world system monitoring and automation concepts.
