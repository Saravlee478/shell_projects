#! /bin/bash

#shell command to know total free internal space
FREE_SPACE=$(df -h | egrep -v "tmpfs|home/nix" | grep "nbd50" | awk '{print $4}' | tr -d G)

#Threshold limit 
TH=255

#condition to send warning if storage reaches threshold
if [[ $FREE_SPACE -lt $TH ]]
then
    echo "Warning, space is less than $TH"
else
    echo "Everything is good"
fi    
