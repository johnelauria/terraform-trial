resource "aws_spot_instance_request" "terraform_sample_ec2" {
  ami                         = var.ami_id
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = true
  user_data                   = filebase64("${path.module}/files/user_data.sh")
  key_name                    = "tf-cloud-trial"
  spot_price                  = var.spot_price

  security_groups = [
    aws_security_group.terraform_sample_sg.name
  ]

  tags = {
    Name = "Terraform trial EC2 spot"
  }
}

resource "aws_security_group" "terraform_sample_sg" {
  ingress {
    from_port   = 80
    protocol    = "TCP"
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    protocol    = "TCP"
    to_port     = 22
    cidr_blocks = ["111.235.88.84/32"]
  }

  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Terraform trial SG"
  }
}