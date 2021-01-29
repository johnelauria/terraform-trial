output "ec2_spot_request_status" {
  value = aws_spot_instance_request.terraform_sample_ec2.spot_bid_status
}