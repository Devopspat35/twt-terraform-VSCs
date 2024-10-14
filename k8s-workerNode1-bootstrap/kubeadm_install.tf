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
  ami             = var.ami
  instance_type   = var.instance
  key_name        = var.key
  user_data       = file("${path.module}/k8s.sh")
  count           = 1
  subnet_id       = var.subnet
  security_groups = ["sg-09aa2eb24d938b343"]

  tags = {
    Name = var.name
    env  = var.namespace
  }
}

variable "ami" {
  type    = string
  default = "ami-085f9c64a9b75eed5"
}

variable "instance" {
  type    = string
  default = "t2.micro"
}

variable "key" {
  type    = string
  default = "class35"
}

variable "name" {
  type    = string
  default = "Node1"
}

variable "namespace" {
  type    = string
  default = "dev"
}

variable "subnet" {
  type    = string
  default = "subnet-0d48db2d545c1e350"
}

