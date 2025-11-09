#!/bin/bash
# AWS CLI Infrastructure Automation Script

# Variables
REGION="ap-south-1"
AMI_ID="ami-02b8269d5e85954ef"
INSTANCE_TYPE="t2.micro"
KEY_NAME="73aws"
SECURITY_GROUP="my-sg"
BUCKET_NAME="ramya-cli-demo-bucket123"

# Create EC2
echo "Launching EC2 Instance..."
aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-groups $SECURITY_GROUP \
  --region $REGION \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=MyCLIInstance}]"

# Create S3 Bucket
echo "Creating S3 Bucket..."
aws s3 mb s3://$BUCKET_NAME --region $REGION

# Upload sample file
echo "Uploading sample file..."
echo "Automation successful" > upload.txt
aws s3 cp upload.txt s3://$BUCKET_NAME/

echo "Automation Completed Successfully!"

