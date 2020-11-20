#!/bin/sh

yay -Qu | awk '{print $1}'> /tmp/.qq && yay -Qum >> /tmp/.qq | notify-send " " "$(cat /tmp/.qq)"
