#!/bin/bash

echo "Waiting for Nginx to start..."

while ! pgrep nginx > /dev/null
do
    echo "Nginx not up yet..."
    sleep 2
done

echo "Nginx is now running"