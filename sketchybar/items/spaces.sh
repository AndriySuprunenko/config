#!/bin/bash

sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        background.color=$ACCENT_COLOR \
        background.corner_radius=5 \
        background.height=26 \
        background.drawing=off \
        label="$sid" \
        icon.padding_left=0                          \
        icon.padding_right=14                          \
        label.padding_right=20                        \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospacer.sh $sid"
done
