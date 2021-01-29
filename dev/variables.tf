variable "ami_id" {
  type        = string
  description = "AMI ID to use to create the EC2 instance"
}

variable "ec2_instance_type" {
  type        = string
  description = "EC2 Instance type"
}

variable "spot_price" {
  type        = string
  description = "Max price to pay for the spot instance"
}