resource "aws_instance" "twtechinstance" {
  for_each = toset(var.diff_count)
  ami             = data.aws_ami.ubuntu_ami.id
  instance_type   = var.enviro-instance-type["dev"]
  key_name        = var.my_key
  security_groups = ["sg-09aa2eb24d938b343"]
  subnet_id       = var.subnet
  user_data       = file("${path.module}/k8s.sh")

  tags = {
    Name = each.value
  }
}

variable "diff_count" {
  type    = list(string)
  default = ["node1", "node2", "HR", "safety", "Health"]
}

variable "subnet" {
  type    = string
  default = "subnet-0d48db2d545c1e350"
}
