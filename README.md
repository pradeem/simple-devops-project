# Simple DevOps Project: EC2 Web App with Terraform & Jenkins

This project provisions an EC2 instance with Apache installed using Terraform. Jenkins automates the provisioning pipeline.

## Features
- No SSH or Docker required
- EC2 setup via cloud-init (user_data.sh)
- Jenkins pipeline with Terraform

## Setup
1. Configure AWS credentials in Jenkins.
2. Run the pipeline to deploy the instance.
3. Access the app at the EC2 Public IP on port 80.
