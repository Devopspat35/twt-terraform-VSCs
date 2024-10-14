#resource.tf
resource "aws_instance" "my_instance" {
  #provider      = aws.east
  for_each      = toset(var.diff_count)
  ami           = data.aws_ami.amazonlinux_ami.id
  instance_type = var.enviro-instance-type["dev"]
  key_name      = var.my_key

  tags = {
    Name = each.value
  }
  /*lifecycle {
    create_before_destroy = true
  }
  */

  #lifecycle {
  #  prevent_destroy = true
  #}

}

/*resource "aws_instance" "my-new-instance" {
  for_each      = toset(var.diff_count)
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = var.enviro-instance-type["dev"]
  key_name      = var.my_key

  tags = {
    Name = each.value
  }
}
*/

variable "diff_count" {
  type    = list(string)
  default = ["dev", "prod", "HR", "safty", ]
}

provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias  = "east"
  region = "us-east-1"
}

