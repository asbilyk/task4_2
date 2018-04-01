#!/bin/bash
sudo apt-get install ntp 
cat "ua.pool.ntp.org">/etc/ntp.conf
sudo service ntp restart
cat "* * * * * $(pwd)/ntp_verify.sh">>crontab -e


