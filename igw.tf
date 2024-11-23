# Internet Gateway
resource "aws_internet_gateway" "pmk_igw" {
  vpc_id = aws_vpc.pmk_vpc.id
  tags = {
    Name = "pmk-igw"
  }
}