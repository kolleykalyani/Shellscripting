#!/bin/bash

if service nginx status > /dev/null 2>&1; then
    echo "Nginx is running"
elif service nginx status 2>&1 | grep -qi "stopped"; then
    echo "Nginx is installed but stopped"
else
    echo "Nginx is not installed"
fi