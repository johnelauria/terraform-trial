provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "pechay_bucket" {
  bucket = "pechay_bucket"
}