output "ec2_instance_public_up" {
  value = module.spot_request.ec2_spot_request_status
}