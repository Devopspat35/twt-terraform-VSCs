
variable "enviro-instance-type" {
  type = map(any)
  default = {
    dev    = "t2.micro"
    prod   = "t2.large"
    uat    = "t3.micro"
    stage  = "t2.medium"
    master = " t3.xlarge"

  }
}

variable "my_key" {
  type    = string
  default = "class35pub"
}



