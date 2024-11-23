# Security Group for App Server
resource "aws_security_group" "pmk_security_group" {
  name        = "app-server-sg"
  description = "Allow inbound SSH and necessary traffic"
  vpc_id      = aws_vpc.pmk_vpc.id

  ingress {
    description = "Allow SSH from public subnet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.1.0/24"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "app-server-security-group"
  }
}
