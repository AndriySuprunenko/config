#!/bin/bash

# sketchybar --set $NAME label="$(date +'%a %d %b %H:%M')"
sketchybar --set $NAME label="$(LANG=ja_JP.UTF-8 date +'%d日%m月 (%a) %H:%M')"
