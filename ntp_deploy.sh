#!/bin/bash
sudo apt-get install ntp 
echo "server ua.pool.ntp.org">/etc/ntp.conf
sudo service ntp restart
echo "* * * * * $(pwd)/ntp_verify.sh">>/var/spool/cron/crontabs/$USER
service cron reload
 

