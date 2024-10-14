provider "aws" {
  region  = "us-east-2"
  profile = "default"
}

resource "aws_instance" "twtechinstance" {
  ami           = var.ami
  instance_type = var.instance["prod"]
  key_name      = var.mykey

  tags = {
    Name = var.name
  }
}

variable "ami" {
  type    = string
  default = "ami-085f9c64a9b75eed5"
}

variable "instance" {
  type = map(any)
  default = {
    dev     = "t2.micro"
    prod    = "t2.large"
    staging = "t2.medium"
  }
}

variable "name" {
  type    = string
  default = "master-k8s"
}


variable "mykey" {
  type    = string
  default = "class35"
}

