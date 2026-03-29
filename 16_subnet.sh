#!/bin/bash
for snapshot in `aws ec2 describe-snapshots --owner-ids self | jq ".Snapshots[].SnapshotId" -r `
do
 echo "we are going to delete $snapshot"
 aws ec2 delete-snapshot --snapshot-id $snapshot
 while [ $(aws ec2 describe-snapshots --snapshot-ids $snapshot | jq -r '.Snapshots[].State') != "deleted" ]
 do
     sleep 2
     echo "waiting for snapshot to delete..."
 done    
 echo "snapshot deleted: $snapshot" 
done