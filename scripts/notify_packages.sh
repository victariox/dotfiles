#!/bin/sh

checkupdates | awk '{print $1}'> /tmp/.qq && yay -Qum >> /tmp/.qq | notify-send " \\N" "$(cat /tmp/.qq)"
