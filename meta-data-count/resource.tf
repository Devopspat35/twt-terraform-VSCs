resource "aws_instance" "twtechinstance" {
  count         = 5
  ami           = data.aws_ami.amazonlinux_ami.id
  instance_type = var.enviro-instance-type["qa"]
  key_name      = var.my_key

  tags = {
    Name = "workerNode ${count.index}"
  }
}

