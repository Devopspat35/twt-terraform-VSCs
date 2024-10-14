variable "my_region" {
  type    = string
  default = "us-east-2"
}
variable "enviro-instance-type" {
  type = map(any)
  default = {
    dev          = "t2.micro"
    prod         = "t2.large"
    uat          = "t3.micro"
    stagebranch  = "t2.medium"
    masterbranch = " t3.xlarge"

  }
}

variable "my_key" {
  type    = string
  default = "class35pub"
}



