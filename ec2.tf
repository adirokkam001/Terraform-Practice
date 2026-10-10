# Security Group
resource "aws_security_group" "adi_sg" {
  name        = "adi-security-group"
  description = "Security group for Adi EC2 instance"

  tags = {
    Name = "adi_sg"
  }
}

# EC2 Instance
resource "aws_instance" "adi" {
  ami                    = "ami-066c4849e6b3a1e3d"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.adi_sg.id]

  tags = {
    Name = "adi"
  }
}
