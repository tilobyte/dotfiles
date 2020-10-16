#!/bin/bash
player_status=$(playerctl status 2> /dev/null)
PLAYERCTL=$(echo "$(playerctl --player=playerctld metadata artist) – $(playerctl --player=playerctld metadata title)")
if [ "$player_status" = "Playing" ]; then
	echo '{"text": " '$PLAYERCTL'", "tooltip": "'$PLAYERCTL'", "class": "playing" }'
elif [ "$player_status" = "Paused" ]; then
	echo '{"text": " '$PLAYERCTL'", "tooltip": "'$PLAYERCTL'", "class": "paused" }'
fi
