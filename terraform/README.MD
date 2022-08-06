# Terraform

**Objective** : Using Terraform provision AWS EC2 Instance.

# Prerequisites and Installation

- Terrafrom

# Commands

```
$ terraform init
$ terraform apply
$ terraform destroy
```
**Using Docker**

```
docker run -v  "$(pwd)":/code -w /code hashicorp/terraform:latest init
docker run -v  "$(pwd)":/code -w /code hashicorp/terraform:latest apply -auto-approve
```


