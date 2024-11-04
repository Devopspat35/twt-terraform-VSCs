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

resource "aws_instance" "twtech" {
  ami             = var.ami
  instance_type   = var.instance
  key_name        = var.key
  user_data       = file("${path.module}/k8s.sh")
  count           = 1
  subnet_id       = var.subnet
  security_groups = ["sg-0c2c06cd9b2409b50"]

  tags = {
    Name = var.name
    env  = var.namespace
  }
}

variable "ami" {
  type    = string
  default = "ami-0ea3c35c5c3284d82"
}

variable "instance" {
  type    = string
  default = "t2.medium"
}

variable "key" {
  type    = string
  default = "devopspat35"
}

variable "name" {
  type    = string
  default = "k8s"
}

variable "namespace" {
  type    = string
  default = "dev"
}

variable "subnet" {
  type    = string
  default = "subnet-020e79625b5bfd8ba"
}

