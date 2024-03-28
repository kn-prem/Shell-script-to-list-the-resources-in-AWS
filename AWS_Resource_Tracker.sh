#!/bin/bash
set -x




#############################################     This script will list the aws resources    ########################################



#AWS S3
#AWS EC2-instances
#AWS Lambda functions
#AWS IAM-users



#list of s3 buckets

echo "print list of s3 buckets"
aws s3 ls



#list of number of ec2-instances

echo "list of ec2-instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'



#list of IAM-users

echo "list IAM users"
aws iam list-users



#List of lambda functions

echo "list lambda functions"
aws lambda list-functions
