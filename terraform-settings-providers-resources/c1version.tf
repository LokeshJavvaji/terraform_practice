# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-sout-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami                    = "ami-0d92749d46e71c34c"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-0fa4ce6b8dabfb489"]
  tags = {
    Name = "Terra-instance"
  }
}