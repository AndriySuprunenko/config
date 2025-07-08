#!/bin/bash
  
sketchybar --add item calendar right \
           --set calendar \
                icon=􀧞 \
                update_freq=1 \
                script="$PLUGIN_DIR/calendar.sh" \
                background.color=$ITEM_BG_COLOR \
                icon.color=$TEXT_COLOR_ONE \
                label.color=$TEXT_COLOR_ONE \
                click_script="open -a Calendar" \
                tooltip="$(date)"

