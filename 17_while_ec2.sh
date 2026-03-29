#!/bin/bash
aws ec2 describe-volumes | jq -r '.Volumes[].VolumeId' | while read vol
do
    echo "Creating snapshot for $vol"
    
    aws ec2 create-snapshot \
        --volume-id "$vol" \
        --description "Snapshot of $vol" | jq -r '.SnapshotId'

done
