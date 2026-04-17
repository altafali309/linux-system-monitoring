# 🖥️ Linux System Monitoring Automation

## 📌 Overview

This project automates system monitoring on a Linux server using Bash scripting and cron jobs. It collects and logs system metrics such as CPU usage, memory usage, and disk utilization at regular intervals.

---

## 🛠️ Tech Stack

* Linux (Ubuntu)
* Bash Scripting
* Cron Jobs

---

## ⚙️ Features

* Monitors CPU usage
* Tracks memory utilization
* Checks disk usage
* Logs system stats with timestamps
* Automated execution using cron

---

## 📂 Project Structure

```
linux-system-monitoring/
│
├── monitor.sh
├── logs/
│   └── system.log
├── screenshots/
└── README.md
```

---

## 🚀 How to Run

### 1. Make script executable

```bash
chmod +x monitor.sh
```

### 2. Run manually

```bash
./monitor.sh
```

### 3. Setup cron job (runs every 5 minutes)

```bash
crontab -e
```

Add:

```bash
*/5 * * * * /home/ubuntu/monitor.sh
```

---

## 📊 Sample Output

```
---- System Monitoring ----
Fri Apr 17 10:00:00 UTC 2026
CPU Usage: 12%
Memory Usage: 45%
Disk Usage: 60%
---------------------------
```

---

## 📸 Screenshots

(Add screenshots of cron job and log output here)

---

## 🧠 Key Learnings

* Bash scripting fundamentals
* Cron job scheduling
* Linux system monitoring tools
* Log file management
* Automation of repetitive tasks
