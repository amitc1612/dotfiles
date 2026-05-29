#!/bin/bash

waypaper --random
WALLPAPER=$(awww query | awk -F'image: ' '{print $2}') 
wal -i "$WALLPAPER" -n
notify-send "Wallpaper randomized!" "Color theme applied"