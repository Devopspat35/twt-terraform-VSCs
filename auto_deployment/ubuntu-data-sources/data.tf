#provider "aws" {}

data "aws_ami" "ubuntu_ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]

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

#ami-003932de22c285676
