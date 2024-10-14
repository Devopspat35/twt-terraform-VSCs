resource "aws_instance" "twtechinstance" {
  count         = length(var.diff_count)
  ami           = data.aws_ami.amazonlinux_ami.id
  instance_type = var.enviro-instance-type["stagebranch"]
  key_name      = var.my_key

  tags = {
    Name = var.diff_count[count.index]
  }
}

variable "diff_count" {
  type    = list(string)
  default = ["dev", "prod", "HR", "safty", ]
}


