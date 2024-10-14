terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {}

resource "aws_instance" "twtech2" {
  ami           = "ami-085f9c64a9b75eed5"
  instance_type = "t2.medium"
  key_name      = "class35"
  user_data     = file("${path.module}/kubeadm.sh")

  tags = {
    Name = "Master-k8s"
  }
}

resource "aws_eip" "my_eip" {
  instance = aws_instance.twtech2.id
}

