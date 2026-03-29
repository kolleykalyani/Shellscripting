#!/bin/bash
OUTPUT=$(aws ec2 describe-volumes | jq -r '.Volumes[] | "\(.VolumeId) \(.Attachments[].Device)"')

echo "$OUTPUT" | while read vol device
do
    echo "$vol $device"
done