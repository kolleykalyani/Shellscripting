#!/bin/bash
OUTPUT=$(aws ec2 describe-volumes | jq ".Volumes[].VolumeId" -r)
for i in $OUTPUT
do
    echo "$i"
done