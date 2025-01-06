terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.66.0, >= 5.37.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "daws-state-dev"
    key    = "web-alb"
    region = "us-east-1"
    dynamodb_table = "daws-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}