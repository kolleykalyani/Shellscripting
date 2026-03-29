#!/bin/bash
OUTPUT=$(aws ec2 describe-volumes | jq -r '.Volumes[] | "\(.VolumeId) \(.Attachments[].Device)"')
while read -r OUTPUT
do
    echo "creating snapshot for $OUTPUT"
    aws ec2 create-snapshot --volume-id $OUTPUT
done <<< "$OUTPUT"
