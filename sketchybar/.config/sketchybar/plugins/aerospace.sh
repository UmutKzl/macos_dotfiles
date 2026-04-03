#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
if [ "$FOCUSED_WORKSPACE" = "$1" ]; then
  sketchybar --set space.$1 \
    background.color=0xffbd93f9 \
    label.color=0xff282a36
else
  sketchybar --set space.$1 \
    background.color=0x4444475a \
    label.color=0xfff8f8f2
fi
#if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
#    sketchybar --set $NAME background.drawing=on
#else
#    sketchybar --set $NAME background.drawing=off
#fi

