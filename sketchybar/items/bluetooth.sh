#!/bin/bash

sketchybar --add item bluetooth right \
           --set bluetooth \
                script="$PLUGIN_DIR/bluetooth.sh" \
                update_freq=1 \
                icon=􀒓 \
                label="..." \
                icon.padding_left=15 \
                tooltip="Bluetooth status" \
                click_script="open 'x-apple.systempreferences:com.apple.Bluetooth'" \
                background.color=$ITEM_BG_COLOR_SIX