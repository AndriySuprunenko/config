#!/bin/bash

# Get current date/time in Japanese
DATE_LABEL="$(LANG=ja_JP.UTF-8 date +'%m月%d日 (%a) %H:%M')"

# Get next calendar event using icalBuddy (if available)
if command -v icalBuddy &> /dev/null; then
  NEXT_EVENT=$(icalBuddy -n -ea -b '' -ps '| ' eventsToday | head -n1)
else
  NEXT_EVENT=""
fi

# Choose icon based on day of week (weekend or weekday)
WEEKDAY=$(date +%u)
if [[ $WEEKDAY -gt 5 ]]; then
  ICON="􀉉" # weekend icon
else
  ICON="􀧞" # weekday icon
fi

# Tooltip with full date and time
TOOLTIP="$(date)"

# Set label, icon, tooltip, and show next event if available
sketchybar --set $NAME \
  label="$DATE_LABEL $NEXT_EVENT" \
  icon="$ICON" \
  tooltip="$TOOLTIP"
