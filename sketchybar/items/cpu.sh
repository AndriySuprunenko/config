#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
                      icon=􀧓  \
                      script="$PLUGIN_DIR/cpu.sh" \
                      background.color=$ITEM_BG_COLOR_TWO
