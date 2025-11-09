#!/bin/bash
# update_cleanup.sh - Updates and cleans system packages

echo "Updating and cleaning system..."

sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean

echo "System update and cleanup completed!"
