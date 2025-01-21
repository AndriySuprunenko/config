#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                        background.color=$ITEM_BG_COLOR_FOUR \
           --subscribe volume volume_change 
