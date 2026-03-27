#!/bin/bash

COUNT=0

while ! systemctl is-active --quiet nginx
do
    echo "Nginx not running, trying to start..."

    systemctl start nginx
    sleep 3

    ((COUNT++))
     echo "Nginx is checking for $COUNT time"
done

echo "Nginx is running fine"