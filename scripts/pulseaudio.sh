#!/bin/sh

volume=$(pamixer --get-volume)
is_muted=$(pamixer --get-mute)

volume_up() {
    if [ $is_muted == "yes" ]; then
        volume_mute
    fi
    pamixer -i 5
    # polybar-msg hook pulse 1
}

volume_down() {
    pamixer -d 5
    # polybar-msg hook pulse 1
}

volume_mute() {
    pamixer -t
    # polybar-msg hook pulse 1
}

volume_print() {
    prefix=""

    if [ $is_muted == "true" ]; then
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
