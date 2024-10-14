resource "aws_instance" "twtechinstance" {
  ami           = data.aws_ami.amazonlinux_ami.id
  instance_type = var.instance["dev"]
  key_name      = var.my_key
  count         = var.instance_count

  tags = {
    Name = var.my_name
  }
}

