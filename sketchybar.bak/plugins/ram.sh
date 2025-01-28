#!/bin/bash

# Get total physical memory in GB
TOTAL_MEM=$(sysctl -n hw.memsize | awk '{print $0/1024/1024/1024}')
if [ -z "$TOTAL_MEM" ]; then
    echo "Error: Unable to get total memory."
    exit 1
fi

# Get page size and used memory in GB
PAGE_SIZE=$(vm_stat | grep "page size" | awk '{print $8}')
if [ -z "$PAGE_SIZE" ]; then
    echo "Error: Unable to determine page size."
    exit 1
fi

USED_MEM=$(vm_stat | grep "Pages active\|Pages wired" | awk -v page_size=$PAGE_SIZE '{sum += $NF * page_size} END {print sum/1024/1024/1024}')
if [ -z "$USED_MEM" ]; then
    echo "Error: Unable to calculate used memory."
    exit 1
fi

# Format memory values with one decimal place
USED_GB=$(printf "%.1f" "$USED_MEM")
TOTAL_GB=$(printf "%.1f" "$TOTAL_MEM")

# Calculate percentage of used memory
MEMORY_USAGE=$(printf "%.0f" $(echo "($USED_MEM/$TOTAL_MEM)*100" | bc -l))

# Format label with proper units
LABEL="${USED_GB}G"
# LABEL="${USED_GB}G/${TOTAL_GB}G (${MEMORY_USAGE}%)"

# Ensure NAME is set
if [ -z "$NAME" ]; then
    echo "Error: NAME is not set."
    exit 1
fi

# Update sketchybar
sketchybar --set $NAME \
    label="$LABEL" \

echo "RAM: $LABEL"