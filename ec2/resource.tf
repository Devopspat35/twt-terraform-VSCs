resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.redhat_ami.id
  instance_type = var.my_instance-type["stage"]
  subnet_id     = module.vpc.subnet_id
  key_name      = var.my_key

  tags = {
    Name = var.my_instance_name
  }
}

#referencing a child module
module "vpc" {
  source = "../vpc"
}


