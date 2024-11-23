# NAT Gateway (Elastic IP)
resource "aws_eip" "pmk_eip" {
  
  tags = {
    Name = "pmk-eip"
  }
}

resource "aws_nat_gateway" "pmk_ngw" {
  allocation_id = aws_eip.pmk_eip.id
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    Name = "pmk-nat-gateway"
  }
}
