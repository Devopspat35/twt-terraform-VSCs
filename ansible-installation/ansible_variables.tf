
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "ans" {
  ami             = "ami-085f9c64a9b75eed5"
  instance_type   = "t2.micro"
  subnet_id       = "subnet-0d48db2d545c1e350"
  key_name        = "class35"
  security_groups = ["sg-09aa2eb24d938b343"]
  count           = 1
  user_data       = file("${path.module}/userdata.sh")

  tags = {
    Name = "Ansible"
  }
}
