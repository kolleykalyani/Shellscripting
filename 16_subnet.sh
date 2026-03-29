#!/bin/bash
OUTPUT=$(aws ec2 describe-volumes | jq -r '.Volumes[] | "\(.VolumeId) \(.Attachments[].Device)"')

echo "$OUTPUT" 
do
    echo "$OUTPUT"
done