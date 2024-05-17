#!/bin/bash
    
# prepare any message you want
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"
host="$(hostname -s)"

# For new line I use $'\n' here
message="New login to server"$'\n'"User: $login_name"$'\n'"Ip: $login_ip"$'\n'"Date: $login_date"

#send it to telegram
telegram-send "$message"
