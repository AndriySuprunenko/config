#!/bin/bash
  
sketchybar --add item calendar right \
           --set calendar \
                icon=􀧞 \
                update_freq=1 \
                script="$PLUGIN_DIR/calendar.sh" \
                background.color=$ITEM_BG_COLOR_TREE \
                click_script="open -a Calendar" \
                tooltip="$(date)"

