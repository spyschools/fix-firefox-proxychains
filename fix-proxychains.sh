#!/bin/bash
# Auto fix proxychains4 permission & config
# Tested on Ubuntu Noble Numbat

CONFIG_SYS="/etc/proxychains4.conf"
CONFIG_USER="$HOME/.proxychains/proxychains.conf"
CONFIG_DIR="$HOME/.proxychains"

echo "[INFO] Checking system config..."
if [ -f "$CONFIG_SYS" ]; then
    echo "[INFO] Fixing permission for $CONFIG_SYS"
    sudo chmod 644 "$CONFIG_SYS"
else
    echo "[ERROR] System config not found: $CONFIG_SYS"
    exit 1
fi

echo "[INFO] Preparing user config directory..."
mkdir -p "$CONFIG_DIR"

echo "[INFO] Copying system config to user config..."
cp "$CONFIG_SYS" "$CONFIG_USER"

echo "[INFO] User config ready at: $CONFIG_USER"
echo
echo "=== Cara pakai ==="
echo "proxychains4 -f $CONFIG_USER firefox"
