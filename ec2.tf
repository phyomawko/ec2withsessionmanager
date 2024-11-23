# EC2 Instance in Private Subnet
resource "aws_instance" "app_server" {
  ami           = "ami-0f935a2ecd3a7bd5c" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id
  iam_instance_profile  = aws_iam_instance_profile.ssm_instance_profile.name
  vpc_security_group_ids = [aws_security_group.pmk_security_group.id]
  tags = {
    Name = "app-server"
  }
}