provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "master_node" {
  ami           = "ami-0b8b44ec9a8f90422"
  instance_type = "t2.large"
  subnet_id     = "subnet-09392493accfea517"
  key_name      = "jenkins_keypair"
  vpc_security_group_ids = ["sg-016c9eac6b8678339"]
  associate_public_ip_address = true

  tags = {
    Name = "MasterNode"
  }
}


resource "aws_instance" "workernode" {
  ami           = "ami-0b8b44ec9a8f90422"
  instance_type = "t2.large"
  subnet_id     = "subnet-09392493accfea517"
  key_name      = "jenkins_keypair"
  vpc_security_group_ids = ["sg-016c9eac6b8678339"]
  associate_public_ip_address = true
  tags = {
    Name = "workerNode"
  }
}
