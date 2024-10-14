variable "my_region" {
  type    = string
  default = "us-east-2"
}

variable "my_instance-type" {
  type = map(any)
  default = {
    dev    = "t2.micro"
    prod   = "t2.large"
    uat    = "t3.micro"
    stage  = "t2.medium"
    master = " t3.xlarge"

  }
}

variable "my_instance_name" {
  type    = string
  default = "work-Node"
}

variable "my_key" {
  type    = string
  default = "class35"
}




