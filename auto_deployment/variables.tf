variable "instance" {
  type = map(any)
  default = {
    dev     = "t2.micro"
    prod    = "t2.large"
    staging = "t2.medium"
    qa      = "t3.micro"
  }
}

variable "my_name" {
  type    = string
  default = "master"
}

variable "my_key" {
  type    = string
  default = "class35"
}

variable "my_region" {
  type    = string
  default = "us-east-2"
}

variable "instance_count" {
  type    = number
  default = 3
}


