variable "my_region" {
  type    = string
  default = "us-east-1"
}
variable "enviro-instance-type" {
  type = map(any)
  default = {
    dev     = "t2.micro"
    prod    = "t2.large"
    staging = "t2.medium"
    qa      = "t3.micro"
  }
}

variable "my_key" {
  type    = string
  default = "class35pub"
}



