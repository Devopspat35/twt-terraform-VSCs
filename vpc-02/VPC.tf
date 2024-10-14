provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

#first-vpc
resource "aws_vpc" "mytwtechnology" {
  cidr_block = "192.168.0.0/24"
  tags = {
    Name = "Mytwtech-VPC"
  }
}

#second-vpc
resource "aws_vpc" "twt" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "twt-VPC"
  }
}

#third-vpc
resource "aws_vpc" "techvpc" {
  cidr_block = "172.224.0.0/24"
  tags = {
    Name = "mytechvpc"
  }
}
