#!/bin/bash

sketchybar --add item ram right \
           --set ram update_freq=2 \
                    icon=􀫦 \
                    icon.color=$TEXT_COLOR \
                    label.color=$TEXT_COLOR \
                    background.color=$ITEM_BG_COLOR_SIX \
                    script="$PLUGIN_DIR/ram.sh"
