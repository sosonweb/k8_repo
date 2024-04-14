provider "aws" {
  region = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}
resource "aws_instance" "master_node" {
  ami           = local.ami
  instance_type = local.instance_type
  subnet_id     = local.subnet_id
  key_name      = local.key_name
  vpc_security_group_ids = local.vpc_security_group_ids
  associate_public_ip_address = local.associate_public_ip_address

  tags = {
    Name = "MasterNode"
  }
}

resource "aws_instance" "workernode" {
  ami           = local.ami
  instance_type = local.instance_type
  subnet_id     = local.subnet_id
  key_name      = local.key_name
  vpc_security_group_ids = local.vpc_security_group_ids
  associate_public_ip_address = local.associate_public_ip_address

  tags = {
    Name = "workerNode"
  }

}
