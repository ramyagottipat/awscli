AWS CLI Automation Project

This project demonstrates automation of AWS resource provisioning using AWS CLI commands. It includes creating and managing EC2 instances and S3 buckets, showcasing end-to-end infrastructure automation.

Project Overview
This project automates the following tasks:

1. Install and Configure AWS CLI: Install AWS CLI and configure credentials using aws configure.
2. Create Security Group: Create a security group with inbound rules for SSH and HTTP access.
3. Launch EC2 Instance: Launch an EC2 instance with specified parameters using aws ec2 run-instances.
4. Create S3 Bucket: Create an S3 bucket for storing configuration files or logs using aws s3 mb.
5. Upload Files to S3: Upload configuration or automation scripts to the S3 bucket using aws s3 cp.
6. Verify Resources: Verify EC2 instance and S3 bucket using aws ec2 describe-instances and aws s3 ls.
7. Automation Script: Combine EC2 and S3 setup commands into a single bash script for end-to-end automation.
8. Cleanup: Terminate EC2 instance and delete S3 bucket using aws ec2 terminate-instances and aws s3 rb --force.

Importance
This project demonstrates the importance of automation in infrastructure management, providing:

- Centralized configuration management: Using S3 to store configuration files and scripts.
- Efficient automation: Automating EC2 instance and S3 bucket creation and management.
- Secure infrastructure: Using security groups and IAM roles to secure AWS resources.

Getting Started
1. Clone this repository: git clone https://github.com/your-username/aws-cli-automation.git
2. Run the automation script: bash automate-aws-resources.sh

Requirements
- AWS account
- AWS CLI installed and configured
- Bash shell

Contributing
Contributions are welcome! Please submit a pull request with your changes.
