resource "aws_instance" "twtechinstance" {
  ami           = data.aws_ami.amazonlinux_ami.id
  instance_type = var.instance["qa"]
  key_name      = var.my_key

  tags = {
    Name = var.my_name
  }
}

