#!/bin/bash
for volume in `aws ec2 describe-volumes | jq -r '.Volumes[].VolumeId'`
do
    echo "Creating snapshot for $volume"
    # aws ec2 create-snapshot \
    #     --volume-id "$volume" \
    #     --description "Snapshot of $volume" | jq -r '.SnapshotId'
done