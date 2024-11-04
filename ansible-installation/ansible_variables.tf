provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "ans" {
  ami             = "ami-0ea3c35c5c3284d82"
  instance_type   = "t2.micro"
  subnet_id       = "subnet-020e79625b5bfd8ba"
  key_name        = "devopspat35"
  security_groups = ["sg-0c2c06cd9b2409b50"]
  count           = 1
  user_data       = file("${path.module}/ans_userdata.sh")

  tags = {
    Name = "Ansible"
  }
}
