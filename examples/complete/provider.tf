terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }

  backend "s3" {
    bucket = "dhanaskanda-remote-state"
    key    = "vpc-check"
    region = "us-east-1"
    dynamodb_table = "dhanaskanda-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}