#!/bin/bash

sketchybar --add item brew left \
           --set brew \
             icon="Brew" \
             icon.padding_left=10 \
             icon.padding_right=0 \
             background.color=$ITEM_BG_COLOR_FOUR \
             label.padding_left=10 \
             update_freq=1800 \
             script="$HOME/.config/sketchybar/plugins/brew.sh"
