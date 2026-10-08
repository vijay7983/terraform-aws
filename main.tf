# Example: Free tier S3 bucket
resource "aws_s3_bucket" "terraform_practice" {
  bucket = "terraform-practice-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "Terraform Practice"
    Environment = "aws-tf"
  }
}

data "aws_caller_identity" "current" {}