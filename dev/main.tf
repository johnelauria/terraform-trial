provider "aws" {
  region = "ap-northeast-1"
}

module "spot_request" {
  source            = "../modules/apache-spot-instance"
  ami_id            = var.ami_id
  ec2_instance_type = var.ec2_instance_type
  spot_price        = var.spot_price
}