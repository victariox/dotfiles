#!/bin/sh

pulse=$(pulseaudio-ctl full-status 2>&1)
volume=`echo $pulse | awk '{print $1}'`
is_muted=`echo $pulse | awk '{print $2}'`

volume_up() {
    if [ $is_muted == "yes" ]; then
        volume_mute
    fi
    pulseaudio-ctl up 5
    polybar-msg hook pulse 1
}

volume_down() {
    pulseaudio-ctl down 5
    polybar-msg hook pulse 1
}

volume_mute() {
    pulseaudio-ctl mute
    polybar-msg hook pulse 1
}

volume_print() {
    prefix=""

    re='^[0-9]+$'
    if ! [[ $volume =~ $re ]] ; then
        echo ""
        exit
    fi

    if [ $is_muted == "yes" ]; then
        prefix=
    elif [ $volume -gt 75 ]; then
        prefix=
    elif [ $volume -lt 25 ]; then
        prefix=
    else 
        prefix=
    fi
    echo $prefix $volume%
}

case "$1" in
    --get)
        volume_print
        ;;
    --up)
        volume_up
        ;;
    --down)
        volume_down
        ;;
    --mute)
        volume_mute
        ;;
esac
