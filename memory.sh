#!/bin/bash

#The command to know the total free RAM space
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')

#Threshold limit for memory
TH=18000

#condition to send warning if the memory is low
if [[ $FREE_SPACE -lt $TH ]]
then
    echo "Warning, Memory is low"
else
    echo "Memory is Good $FREE_SPACE M"
fi    
