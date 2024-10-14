variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "app_name" {
  type    = string
  default = "jenkins"
}

variable "env" {
  type    = string
  default = "prod"
}

variable "department" {
  type    = string
  default = "HR"
}

locals {
  #vpc_name = "${locals.app_name}-jenkins" - "${locals.env}-prod" - "${locals.department}-HR"
  vpc_name = var.app_name
}


