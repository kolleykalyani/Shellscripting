#!/bin/bash
######################################################
# Author: Kalyani									 #
# Description: first script                          #
# Date: 26-03-2026									 #
######################################################
# git add . && git commit -m "adding script" && git push

PID=$(ps -ef | grep nginx | grep master | cut -d " " -f9)
echo $PID
if [ -n "$PID" ]; then
    echo "Nginx is running with PID: $PID"
else
    echo "Nginx is not running"
    echo "Starting Nginx..."
    sudo service nginx start 2>&1 /dev/null
    PID=$(ps -ef | grep nginx | grep master | cut -d " " -f9)
    echo "Nginx started with PID: $PID"
fi