# main.tf 
# place .pem file and public_key .pub in the same dir as that of main.tf
# For example <pem_file_name.pem> 

resource "aws_key_pair" "deployer" {
  #key_name   = "terraform"
  key_name   = "zafar_pem_file"
  public_key = file("zaf_public_key.pub")
}

#edge-device = “ec2-machine-name” 
resource "aws_instance" "edge-device" {
  # Creates four identical aws ec2 instances
  count = 4     
  
  # All four instances will have the same ami and instance_type
  ami = lookup(var.ec2_ami,var.region) 
  instance_type = var.instance_type # 
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "edge-device-${count.index}"
  }
}
