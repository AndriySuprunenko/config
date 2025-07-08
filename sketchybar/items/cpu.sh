#!/bin/bash

sketchybar --add item cpu right \
           --set cpu update_freq=2 \
                    icon=􀧓 \
                    icon.color=$TEXT_COLOR_FOUR \
                    label.color=$TEXT_COLOR_FOUR \
                    background.color=$ITEM_BG_COLOR \
                    script="$PLUGIN_DIR/cpu.sh"
