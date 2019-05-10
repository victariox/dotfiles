#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo " $(playerctl metadata title | cut -c -20)"
    polybar-msg hook play_button 1
elif [ "$player_status" = "Paused" ]; then
    echo " $(playerctl metadata title | cut -c -20)"
    polybar-msg hook play_button 2
else
    echo "-"
    polybar-msg hook play_button 3
fi
