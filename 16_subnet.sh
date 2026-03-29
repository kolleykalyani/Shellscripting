#!/bin/bash
OUTPUT=$(aws ec2 describe-volumes | jq -r '.Volumes[] | {VolumeId: .VolumeId, Device: .Attachments[].Device}')

echo "$OUTPUT" | while read vol device
do
    echo "$vol $device"
done