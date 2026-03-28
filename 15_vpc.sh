#!/bin/bash
OUTPUT=$(aws ec2 describe-vpcs | jq ".Vpcs[].IsDefault")
if [ $OUTPUT == "true" ]; then
    echo "Default VPC already exists"
else   
    echo "Default VPC does not exist"
fi
