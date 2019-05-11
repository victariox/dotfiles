#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

get_track() {
    counter=$(cat ~/.config/polybar/counter)
    ccd=$(playerctl metadata title)
    
    if [ "$ccd" != "$(cat ~/.config/polybar/track_name)" ]; then
        #track changed save the name
       echo "$ccd" > ~/.config/polybar/track_name
       echo "0" > ~/.config/polybar/counter
       counter=0
    fi

if [ ${#ccd} -ge 20 ]; then

    right=$counter
    if [ $right -gt ${#ccd} ]; then
        right=${#ccd}    
    fi
    if [ $right -gt 20 ]; then
            right=20
    fi

    left=$(($counter - $right))


    final_result="${ccd:left:right}"

    if [ $right -eq ${#ccd} ] || [ $right -eq 20 ]; then
        printf "[%-20s]\n", "${final_result}"
    else
        printf "[%20s]\n",  "${final_result}"
    fi

    if [ ${#final_result} -eq 0 ]; then
        counter=0
    fi
fi
    printf "[%-20s]\n", "${ccd}"
    expr $counter + 1 > ~/.config/polybar/counter
}

if [ "$player_status" = "Playing" ]; then
    echo ""
    polybar-msg hook play_button 1
elif [ "$player_status" = "Paused" ]; then
    echo ""
    polybar-msg hook play_button 2
else
    echo "-"
    polybar-msg hook play_button 3
fi
