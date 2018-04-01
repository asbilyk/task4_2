#!/bin/bash
if [[ -z "`pgrep ntp`" ]] 
  then
  sudo service ntp start
fi
if diff "/etc/ntp.conf" "$(pwd)/temp"
then
>&1
server ua.pool.ntp.org > /etc/ntp.conf
service ntp start
rm $(pwd)/temp
fi
