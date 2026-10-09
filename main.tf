# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}


#EC2 INSTANCE
resource "aws_instance" "adi" {
  ami                    = "ami-066c4849e6b3a1e3d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.adi_sg.id]

  tags = {
    Name = "adi"
  }
}

# SECURITY GROUP
resource "aws_security_group" "adi_sg" {
  name        = "adi-security-group"
  description = "Security group for Adi EC2 instance"
  tags = {
    Name = "adi_sg"
  }
}


#S3
resource "aws_s3_bucket" "adi_bucket" {
  bucket = "adi-bucket-terraform"

  tags = {
    Name        = "adi_bucket"
    Environment = "Dev"
  }
}