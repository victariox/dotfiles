#!/bin/sh

toggle() {
    if [ -f ~/.config/polybar/.caffeine ]; then
        rm ~/.config/polybar/.caffeine
    else
        touch ~/.config/polybar/.caffeine
    fi
}

init() {
    if [ -f ~/.config/polybar/.caffeine ]; then
        xset dpms 0 0 0
        xset -dpms
        xset s off
        echo 
    else
        xset dpms 900 1800 3600
        xset +dpms
        xset s on
        echo %{F#666666}
    fi
}

case "$1" in
    --get)
        init
        ;;
    --toggle)
        toggle
        init
        ;;
esac
