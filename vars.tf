# vars.tf
# AMI ID on AWS EC2: ami-097a2df4ac947655f 
# AWS EC2 region us-east-1	US East (N. Virginia)

# Creating a Variable for ami of type map
variable "ec2_ami" {
  type = map

  default = {
    us-west-1 = "ami-006fce872b320923e"
  }
}

# Creating a Variable for region
variable "region" {
  default = "us-east-1"
}

# Creating a Variable for instance_type
variable "instance_type" {    
  type = string
}
