provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "nyc311_raw" {
  bucket = var.raw_bucket_name
  force_destroy = true
}

resource "aws_s3_bucket" "nyc311_checkpoints" {
  bucket = var.checkpoint_bucket_name
  force_destroy = true
}
