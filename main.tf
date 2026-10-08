terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Example: Free tier S3 bucket
resource "aws_s3_bucket" "terraform_practice" {
  bucket = "terraform-practice-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "Terraform Practice"
    Environment = "aws-tf"
  }
}

data "aws_caller_identity" "current" {}