#!/bin/bash
OUTPUT=$(aws ec2 describe-subnets | jq ".Subnets[].SubnetId")
for i in $OUTPUT
do
    echo "$i"
done