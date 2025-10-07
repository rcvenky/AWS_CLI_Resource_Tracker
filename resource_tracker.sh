#!/bin/bash

#########################################
# Author : Venkatesh

# Date :  06th Oct 2025

# About : This Script will give you the Details of AWS Resources Details

# Version: v1.0

########################################

set -x
set -e
set -o pipefail

#EC2
echo "Running EC2 Instances..."
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#S3
echo "Running S3 Buckets Details"
aws s3 ls

#Lambda
echo "Running Lambda Functions"
aws lambda list-functions | jq '.Functions[].FunctionArn'
