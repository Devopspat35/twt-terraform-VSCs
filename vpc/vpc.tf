resource "aws_vpc" "my_test" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = local.vpc_name
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.my_test.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "twt-SN"
  }
}

output "subnet_id" {
  value = aws_subnet.main.id
}

#cut variables to variable.tf file in the vpc module
/*variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
}
 */

