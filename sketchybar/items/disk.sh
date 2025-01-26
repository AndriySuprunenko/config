#!/bin/bash

sketchybar --add item disk right \
           --set disk update_freq=60 \
                     icon=􀤃 \
                     icon.color=$TEXT_COLOR \
                     label.color=$TEXT_COLOR \
                     background.color=$ITEM_BG_COLOR_SEVEN \
                     script="$PLUGIN_DIR/disk.sh"
