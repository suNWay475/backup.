# Disk Usage Monitor

Bash script that checks disk usage on all partitions
and warns if usage exceeds a specified threshold.

## Features

- Checks all mounted partitions automatically
- Configurable threshold via argument
- Structured logging with WARNING/INFO levels
- Saves logs to ~/system.log/ with date in filename

## Requirements

- Linux (Ubuntu/Debian)
- bash, df, awk

## Usage

chmod +x disk_monitor.sh
./disk_monitor.sh        # default threshold 80%
./disk_monitor.sh 90     # custom threshold 90%

## Log example

[17:55:01] [INFO] Everything is okay — 45%
[17:55:01] [WARNING] Disk usage is 85%

## Author

GitHub: https://github.com/suNWay475