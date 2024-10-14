#comments.tf
provider "aws" {
  region = "us-east-2"
}

#vpc
resource "aws_vpc" "vpc35" {
  cidr_block = "10.10.0.0/20"
  tags = {
    Name = "twtech-vpc"
  }
}
