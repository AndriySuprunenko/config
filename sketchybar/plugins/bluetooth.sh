#!/bin/bash

# Debugging: log output for troubleshooting
LOGFILE="/tmp/sketchybar_bluetooth.log"
exec >> "$LOGFILE" 2>&1
set -x

# Get Bluetooth power state
BT_STATUS=$(blueutil --power)
CONNECTED_DEVICES=$(blueutil --paired --connected | awk -F'"' '/name/ {print $2}')

if [ "$BT_STATUS" = "1" ]; then
  ICON="󰂯"
else
  ICON="󰂲"
fi

if [ -n "$CONNECTED_DEVICES" ]; then
  TOOLTIP="Connected devices:\n$CONNECTED_DEVICES"
else
  TOOLTIP="No connected devices"
fi

sketchybar --set ${NAME:-bluetooth} icon="$ICON" label= tooltip="$TOOLTIP"
