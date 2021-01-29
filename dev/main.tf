provider "aws" {
  region = "ap-northeast-1"
}

module "spot_request" {
  source            = "../modules/"
  ami_id            = var.ami_id
  ec2_instance_type = var.ec2_instance_type
  spot_price        = var.spot_price
}