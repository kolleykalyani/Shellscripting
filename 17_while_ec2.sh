#!/bin/bash
COUNT=0
echo "Waiting for Nginx to start..."

while ! pgrep nginx > /dev/null
do
    echo "Nginx not up yet..."
    sleep 10
((COUNT++)) 
echo "Waiting for Nginx to start... $COUNT"   
done

echo "Nginx is now running"