#!/bin/bash

FREE_MEM=`free -m | grep Mem | awk '{printf "%.1f\n", $7/$2 * 100}'`

if (( $(echo "$FREE_MEM < 10" |bc -l) )); then
	notify-send 'Low Memory' %$FREE_MEM
fi

echo %$FREE_MEM
