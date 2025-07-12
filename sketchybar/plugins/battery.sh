#!/bin/sh

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
  9[0-9]|100)
    ICON="􀛨"
    COLOR="0xffa6da95" # green
    ;;
  [6-8][0-9])
    ICON="􀺸"
    COLOR="0xffa6da95" # yellow
    ;;
  [2-5][0-9])
    ICON="􀺶"
    COLOR="0xffffa500" # orange
    ;;
  [0-1][0-9])
    ICON="􀛩"
    COLOR="0xffff0000" # red
    ;;
  *)
    ICON="􀛪"
    COLOR="0xff888888" # gray
    ;;
esac

if [[ $CHARGING != "" ]]; then
  ICON="􀢋"
  COLOR="0xff91b4fa" # blue for charging
fi

# Add low battery warning
if [ $PERCENTAGE -le 20 ] && [ "$CHARGING" = "" ]; then
    # Add notification or visual indicator
    LABEL_COLOR="0xffff0000"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%" icon.color=$COLOR label.color=$COLOR
