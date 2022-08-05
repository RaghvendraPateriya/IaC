# IaC
Infrastructure as Code by Building a Custom Machine Image in AWS

# Packer 

URL: https://www.packer.io

# Building Block

- Builder
- Provisioner
- Post Processor


# Prerequisites and Installation

- Create AWS Account & IAM User
- Get AWS Access Key & Secreate Key
- Install Packer 

# Excercise: Create custome machine image, having Jenkins server configured on it.

# Structure

- packer.json
- setup.sh
- variable.json

Note: Enable port 8080 in AWS - inbound security groups rules to add the following rule (custom TCP at port 8080) and allow access to anywhere.
