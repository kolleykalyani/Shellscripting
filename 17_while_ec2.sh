#!/bin/bash
for volume in `aws ec2 describe-volumes | jq -r '.Volumes[].VolumeId'`
do
    echo "Creating snapshot for $volume"
    SNAPSHOT_ID=$(aws ec2 create-snapshot --volume-id $volume --description "Snapshot of $volume" | jq -r '.SnapshotId')
    echo "snapshot created: $SNAPSHOT_ID"
    echo "waiting for snapshot to complete..."
    while [ $(aws ec2 describe-snapshots --snapshot-ids $SNAPSHOT_ID | jq -r '.Snapshots[].State') != "completed" ]
    do  
        sleep 2
        echo "waiting for snapshot to complete..."
    done
    echo "snapshot completed: $SNAPSHOT_ID"
done