#!/bin/bash
######################################################
# Author: Kalyani									 #
# Description: first script                          #
# Date: 26-03-2026									 #
######################################################
# git add . && git commit -m "adding script" && git push

PID=$(ps -ef | grep nginx | grep master | cut -d " " -f9)
echo $PID