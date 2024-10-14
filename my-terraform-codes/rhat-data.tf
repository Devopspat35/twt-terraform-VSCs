provider "aws" {}

data "aws_ami" "redhat_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["RHEL_HA-9.3.0_HVM-20231101-x86_64-5-Hourly2-GP2"]

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

#ami-08978028fd061067a
