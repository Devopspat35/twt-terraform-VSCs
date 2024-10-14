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

resource "aws_instance" "twtechinstance" {
  ami           = var.ami
  instance_type = var.instance

  tags = {
    Name = var.name
    env  = "dev"
  }
}

variable "ami" {
  type    = string
  default = "ami-09efc42336106d2f2"
}

variable "instance" {
  type    = string
  default = "t2.micro"
}

variable "name" {
  type    = string
  default = "Node20"
}
