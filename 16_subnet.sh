#!/bin/bash
for snapshot in `aws ec2 describe-snapshots --owner-ids self | jq ".Snapshots[].SnapshotId" -r `
do
 echo "we are going to delete $snapshot"
 aws ec2 delete-snapshot --snapshot-id $snapshot   
 echo "snapshot deleted: $snapshot" 
done