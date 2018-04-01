#!/bin/bash
if [ -n `pgrep ntp`]
then
`/etc/init.d/ntp start`
fi 

