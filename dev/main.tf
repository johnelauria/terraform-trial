provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "terraform_sample_ec2" {
  ami                         = var.ami_id
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = true
  user_data                   = filebase64("${path.module}/files/user_data.sh")
  security_groups = [
    aws_security_group.terraform_sample_sg.id
  ]

  tags = {
    Name = "Terraform trial EC2"
  }
}

resource "aws_security_group" "terraform_sample_sg" {
  ingress {
    from_port = 80
    protocol  = "TCP"
    to_port   = 80
  }

  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
  }

  tags = {
    Name = "Terraform trial SG"
  }
}