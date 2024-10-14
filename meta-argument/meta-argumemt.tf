resource "aws_instance" "twtech2" {
  ami           = data.aws_ami.amazonlinux_ami.id
  instance_type = var.instance["qa"]
  key_name      = var.my_key

  #user_data     = file("${path.module}/ans.sh")
  subnet_id = aws_subnet.main.id

  depends_on = [aws_vpc.my_test]

  tags = {
    Name = var.my_name
  }
}



resource "aws_vpc" "my_test" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "twtechvpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.my_test.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "TwT-subnet"
  }
}


