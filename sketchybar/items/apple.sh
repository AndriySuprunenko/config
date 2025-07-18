#!/usr/bin/env sh

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

sketchybar --add item           apple.logo left                             \
                                                                            \
           --set apple.logo     icon="󰣇"                                 \
                                icon.font="JetBrainsMono Nerd Font:Semibold:18.0" \
                                label.drawing=off                           \
                                icon.padding_right=8                   \
                                click_script="$POPUP_CLICK_SCRIPT"          \
                                                                            \
           --add item           apple.prefs popup.apple.logo                \
           --set apple.prefs    icon="􀣌"                           \
                                label="Preferences" \
                                background.color=$ITEM_BG_COLOR \
                                click_script="open -a 'System Preferences';
                                              $POPUP_OFF"                   \
                                                                            \
           --add item           apple.activity popup.apple.logo             \
           --set apple.activity icon="􀖈"                              \
                                label="Activity"                            \
                                background.color=$ITEM_BG_COLOR \
                                click_script="open -a 'Activity Monitor';
                                              $POPUP_OFF"\
                                                                            \
           --add item           apple.lock popup.apple.logo                 \
           --set apple.lock     icon="􀒲"                                  \
                                label="Lock Screen"                         \
                                background.color=$ITEM_BG_COLOR \
                                click_script="pmset displaysleepnow;
                                              $POPUP_OFF"
