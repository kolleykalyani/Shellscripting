#!/bin/bash
OUTPUT=$(aws ec2 describe-volumes | jq '.Volumes[] | {VolumeId: .VolumeId, Device: .Attachments[].Device}')

echo "$OUTPUT" | while read vol device
do
    echo "Name of the volume and device: $vol $device"
done