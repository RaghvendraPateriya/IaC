#!/bin/bash

<<comment
 Objective: Create custome machine image, having Jenkins server configured on it.
 And deploy in AWS, By using packer and terraform.
 
 Steps:
 - Build machine image using packer
 - Deploy/Provision in AWS using Terraform
comment


docker run --rm -v "$(pwd)":/code -w /code/packer hashicorp/packer:light build -var-file="variable.json" packer.json

sleep 10


docker build --tag myterraformimage .
docker run -v "$(pwd)":/code -w /code --entrypoint=/code/deploy.sh myterraformimage


