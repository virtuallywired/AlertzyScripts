#!/bin/sh
# Author: Nicholas Mangraviti
# Website: virtuallywired.io
# Description: Sends vCenter Alarm Push notifications using Alertzy.app
# Reference: http://virtuallywired.io

key="<You Alertzy Account Key" # Update this with your Alertzy Account Key
title="vCenter Alarm"
folder="Production"

text="Alarm: $1
Target: $2
Summary: $5"
 
curl -s \
    --form-string "accountKey=$key" \
    --form-string "title=$title" \
    --form-string "message=$text" \
    --form-string "group=$folder" \
https://alertzy.app/send
