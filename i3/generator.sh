#!/bin/bash

genpath="${PWD}"
modpath="${genpath}/plugins"
config="${genpath}/config"

srcfiles=(
modifiers
monitors
fonts
workspace
container
actions
windows_assign
apps
i3_gaps
sys_power
resize
startup_apps
)

mv -f config ${genpath}/backup/config_$(date +"%Y%m%d%H%M")
touch $config

for filename in "${srcfiles[@]}"
do
  cat ${modpath}/${filename} >> ${config}
  echo >> ${config}
done
