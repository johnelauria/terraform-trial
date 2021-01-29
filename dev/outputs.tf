output "ec2_instance_public_up" {
  value = aws_spot_instance_request.terraform_sample_ec2.public_ip
}