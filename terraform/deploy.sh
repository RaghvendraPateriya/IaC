#!/bin/sh
set -euo pipefail
IFS=$'\n\t'

cd /code

terraform init
terraform get -update -no-color
terraform apply -no-color -auto-approve
