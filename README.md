# IaC

Infrastructure as Code by Building a Custom Machine Image and Deploy Code/Application in AWS

# Tools/Technology

- Packer
- Terraform
- Shell Script

**Application:** Jenkins

# Steps

- Create custom image with Jenkins installation.
- Build the image using Packer, This will create a Image in amazon-ebs.
- Using this Image provision AWS EC2 Instance.


# Run

```
$ source build_image_and_deploy.sh
```


