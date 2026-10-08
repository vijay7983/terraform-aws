output "s3_bucket_name" {
  value       = aws_s3_bucket.terraform_practice.id
  description = "S3 bucket name"
}