terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.45.0"
    }
  }
  backend "s3" {
    bucket = "dk1-terraform-bucket"
    key    = "s3-backend"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

