#!/bin/bash

sketchybar --add item battery right \
           --set battery update_freq=120 \
                         background.color=$ITEM_BG_COLOR \
                         icon.color=$TEXT_COLOR_SEVEN \
                         label.color=$TEXT_COLOR_SEVEN \
                         script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke power_source_change
