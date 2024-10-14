provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "myec2" {
  ami           = "ami-0490fddec0cbeb88b"
  instance_type = "t2.micro"
  key_name      = "class35"
  subnet_id     = "subnet-03706bf207e2fd9d8"
  tags = {
    Name = "Node1"
  }
}
