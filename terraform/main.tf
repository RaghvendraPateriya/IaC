terraform {
  required_providers {
  aws = {
    source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
    region         = "us-east-1"
    access_key     = var.aws_access_key
    secret_key     = var.aws_secret_key
}

resource "aws_instance" "app_server" {
    ami           = "ami-090fa75af13c156b4"
    instance_type = "t2.micro"

    tags = {
        Name = "ExampleAppServerInstance"
    }
}
