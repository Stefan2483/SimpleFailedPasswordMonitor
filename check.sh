#!/bin/sh

#run this script every minute in root's crontab and hide it in secret location
#you need to update token and user fields with Pushover credentials

date2=$(date +"%b %_d %H:%M" --date '-5 min')
date1=$(date +"%b %_d %H:%M")
result=`cat /var/log/auth.log | sed -n '/'"$date2"'/,/'"$date1"'/p' | grep "Failed password"`
if [ -n "$result" ]; then
        curl -s \
          -F "token=<Pushover token>" \
          -F "user=<Pushover user id>" \
          -F "message=$result" \
          https://api.pushover.net/1/messages.json

fi
