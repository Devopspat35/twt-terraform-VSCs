#provider "aws" {}

data "aws_ami" "amazonlinux_ami" {
  most_recent = true
  owners      = ["137112412989"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.5.20240916.0-kernel-6.1-x86_64"]

  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]

  }
  filter {
    name   = "architecture"
    values = ["x86_64"]

  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

#ami-037774efca2da0726


