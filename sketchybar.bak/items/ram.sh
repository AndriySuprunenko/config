#!/bin/bash

sketchybar --add item ram right \
           --set ram update_freq=2 \
                    icon=􀫦 \
                    icon.color=$TEXT_COLOR_TREE \
                    label.color=$TEXT_COLOR_TREE \
                    background.color=$ITEM_BG_COLOR \
                    script="$PLUGIN_DIR/ram.sh"
