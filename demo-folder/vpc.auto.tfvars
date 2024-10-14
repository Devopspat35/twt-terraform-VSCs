#vpc_name = "mytwtvpc"
resource "aws_instance" "mythinkwtech" {
  ami               = "ami_jd"
  instance_type     = "t2.micro"
  key_name          = "class35"
  availability_zone = "us-east-2"

}
