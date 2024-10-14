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
  default = "k8s-Node"
}

variable "my_key" {
  type    = string
  default = "class35pub"
}

variable "my_region" {
  type    = string
  default = "us-east-2"
}

variable "instance_count" {
  type    = number
  default = 2
}


