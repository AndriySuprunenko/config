#!/bin/bash

# Get disk info using diskutil for accurate macOS disk space
DISK_INFO=$(diskutil info / | awk '
    /Container Total Space/ {
        total=$4
        if ($5 == "TB") total *= 1024
        gsub(/[^0-9.]/, "", total)
    }
    /Container Free Space/ {
        free=$4
        if ($5 == "TB") free *= 1024
        gsub(/[^0-9.]/, "", free)
    }
    END {
        total_gb = total
        used_gb = total - free
        pct = (used_gb / total_gb) * 100
        printf "%.1f %.1f %.0f", used_gb, total_gb, pct
    }
')

# Check if command failed
if [ -z "$DISK_INFO" ]; then
    sketchybar --set $NAME label="Error"
    exit 1
fi

# Parse values
read USED_GB TOTAL_GB USAGE_PCT <<< "$DISK_INFO"

# Format label
LABEL="${USED_GB}G"
# LABEL="${USED_GB}G/${TOTAL_GB}G (${USAGE_PCT}%)"

# Update sketchybar
sketchybar --set $NAME label="$LABEL"

echo "Disk: $LABEL"