#!/bin/bash

sketchybar --add item brew left \
           --set brew \
             icon="Brew packages:" \
             icon.padding_left=10 \
             icon.padding_right=10 \
             background.color=$ITEM_BG_COLOR_FOUR \
             update_freq=1800 \
             script="$HOME/.config/sketchybar/plugins/brew.sh"
