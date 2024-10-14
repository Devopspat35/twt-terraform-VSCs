resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.redhat_ami.id
  instance_type = var.my_instance-type["dev"]
  subnet_id     = aws_subnet.main.id
  key_name      = var.my_key
  depends_on    = [aws_vpc.my_test]

  tags = {
    Name = var.my_instance_name
  }
}

resource "aws_vpc" "my_test" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "twt-vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.my_test.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "twt-SN"
  }
}
