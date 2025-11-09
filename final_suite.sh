#!/bin/bash
# final_suite.sh - Complete Maintenance Suite with Logging and Error Handling

LOGFILE="$HOME/maintenance_log.txt"

log() {
  echo "$(date): $1" >> "$LOGFILE"
}

run_task() {
  echo "Running $1..."
  bash "$1"
  if [ $? -eq 0 ]; then
    log "$1 executed successfully."
  else
    log "Error occurred in $1."
  fi
}

while true; do
  echo "=============================="
  echo " FINAL SYSTEM MAINTENANCE SUITE"
  echo "=============================="
  echo "1. Backup"
  echo "2. Update & Clean"
  echo "3. Monitor Logs"
  echo "4. View Log History"
  echo "5. Exit"
  echo -n "Enter choice: "
  read choice

  case $choice in
    1) run_task "./backup.sh" ;;
    2) run_task "./update_cleanup.sh" ;;
    3) run_task "./log_monitor.sh" ;;
    4) cat "$LOGFILE" ;;
    5) echo "Exiting..."; exit 0 ;;
    *) echo "Invalid choice!" ;;
  esac
done
