#!/bin/bash

# Launch Mopidy if not working
PID=$(pgrep -f mopidy.conf)

if [ -z $PID ]; then

# Wait until the i3 initialize 
sleep 10;

/usr/bin/python2 /usr/bin/mopidy --config /home/wolf/Projects/dotfiles/mopidy/mopidy.conf & 
echo "Mopidy launched..."

fi
