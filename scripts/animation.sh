#!/bin/bash

chars="/-\|"
while :; do
  for (( i=0; i<${#chars}; i++ )); do
    sleep 0.25
    echo -en "${chars:$i}" "\r"
  done
done
