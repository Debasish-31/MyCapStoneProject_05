#!/bin/bash
# maintenance_menu.sh - Menu for System Maintenance Tasks

while true; do
  echo "=============================="
  echo "  SYSTEM MAINTENANCE MENU"
  echo "=============================="
  echo "1. Backup Files"
  echo "2. Update and Clean System"
  echo "3. Monitor Logs"
  echo "4. Exit"
  echo -n "Choose an option [1-4]: "
  read choice

  case $choice in
    1) ./backup.sh ;;
    2) ./update_cleanup.sh ;;
    3) ./log_monitor.sh ;;
    4) echo "Goodbye!"; exit 0 ;;
    *) echo "Invalid choice!" ;;
  esac
done
