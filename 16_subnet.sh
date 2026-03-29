#!/bin/bash
OUTPUT=$(aws ec2 describe-volumes | jq '.Volumes[] | {.VolumeId, Device: .Attachments[].Device}')
for i in $OUTPUT
do
    echo "Name of the volume and device: $i"
done