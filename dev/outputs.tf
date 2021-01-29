output "ec2_instance_public_up" {
  value = aws_instance.terraform_sample_ec2.public_ip
}