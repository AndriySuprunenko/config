#!/bin/bash

sketchybar --add item volume right \
           --set volume \
                script="$PLUGIN_DIR/volume.sh" \
                background.color=$ITEM_BG_COLOR \
                icon=􀊩 \
                label="--%" \
                label.color=$TEXT_COLOR_FIVE \
                icon.color=$TEXT_COLOR_FIVE \
                tooltip="Volume: --%" \
           --subscribe volume volume_change
