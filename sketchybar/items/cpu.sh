#!/bin/bash

sketchybar --add item cpu right \
           --set cpu update_freq=2 \
                    icon=􀧓 \
                    icon.color=$TEXT_COLOR \
                    label.color=$TEXT_COLOR \
                    background.color=$ITEM_BG_COLOR_TWO \
                    script="$PLUGIN_DIR/cpu.sh"
