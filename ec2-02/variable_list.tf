provider "aws" {
  region  = "us-east-2"
  profile = "default"
}

resource "aws_instance" "twtechinstance" {
  ami           = var.ami
  instance_type = var.instance
  key_name      = "class35"

  tags = {
    Name = name
  }
}


variable "ami" {
  type    = string
  default = "ami-085f9c64a9b75eed5"
}

variable "instance" {
  type    = string
  default = "t2.large"
}

variable "name" {
  type    = string
  default = "masterNode"
}


