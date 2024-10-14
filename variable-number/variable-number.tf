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

resource "aws_instance" "myinstance" {
  ami           = var.ami
  instance_type = var.instance
  count         = var.instance_count
  key_name      = var.mykey

  tags = {
    Name = var.name
    env  = "dev"
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

variable "name" {
  type    = string
  default = "Node"
}

variable "sshport" {
  type    = number
  default = "22"
}

variable "instance_count" {
  type    = number
  default = 3
}

variable "mykey" {
  type    = string
  default = "class35"
}

