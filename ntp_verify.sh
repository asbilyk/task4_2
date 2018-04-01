#!/bin/bash
if [-n `pgrep ntp`]
then
`service ntp start`
fi 

