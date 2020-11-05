#!/bin/bash
swaymsg workspace 2:music
swaymsg "exec kitty sh -c 'sleep 1.5 &&/usr/bin/ncmpcpp'"
sleep 1s
swaymsg "exec /home/timothy/bin/imv-ncmpcpp"
sleep 0.5s
# swaymsg "exec kitty"
# sleep 1s
# swaymsg "focus child;resize set height 32"
#swaymsg "focus left; splitv"
swaymsg "splitv"
swaymsg "exec kitty /usr/bin/cava"
sleep 1s
swaymsg "focus child; resize set height 23; focus left; splitv; exec kitty"
sleep 1s
swaymsg "focus child; resize set height 30; focus up"
# swaymsg "focus child; resize set width 57; resize set height 20"
# sleep 1s
# swaymsg "focus right; splitv"
