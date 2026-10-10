# S3 Bucket
resource "aws_s3_bucket" "adi_bucket" {
  bucket = "adi-bucket-terraform"

  tags = {
    Name        = "adi_bucket"
    Environment = "Dev"
  }
}
