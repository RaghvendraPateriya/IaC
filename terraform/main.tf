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


data "aws_ami" "example"  {
    most_recent      = true
    owners           = ["self"]

    filter {
      name   = "name"
      values = ["myFirstAMI"]
    }


}

resource "aws_instance" "app_server" {
    ami           = data.aws_ami.example.id
    instance_type = "t2.micro"

    tags = {
        Name = "ExampleAppServerInstance"
    }
}
