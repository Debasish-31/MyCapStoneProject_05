#!/bin/bash
# log_monitor.sh - Monitors system log and alerts on specific keywords

LOG_FILE="/var/log/syslog"
KEYWORD="error"

echo "Monitoring $LOG_FILE for '$KEYWORD'..."

tail -Fn0 "$LOG_FILE" | \
while read line ; do
  echo "$line" | grep --quiet "$KEYWORD"
  if [ $? = 0 ]; then
    echo "ALERT: Error found in log file!"
    echo "$(date): $line" >> ~/log_alerts.txt
  fi
done
