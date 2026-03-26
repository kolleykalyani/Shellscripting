#!/bin/bash
######################################################
# Author: Kalyani									 #
# Description: first script                          #
# Date: 26-03-2026									 #
######################################################
# git add . && git commit -m "adding script" && git push

PID=$(pgrep -f "nginx: master")
echo $PID
if [ -n "$PID" ]; then
    echo "Nginx is running with PID: $PID"
else
    echo "Nginx is not running"
fi