#!/bin/bash

# sketchybar --set $NAME label="$(date +'%a %d %b %H:%M')"
sketchybar --set $NAME label="$(LANG=ja_JP.UTF-8 date +'%m月%d日 (%a) %H:%M')"
