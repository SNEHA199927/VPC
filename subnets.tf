resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.public_subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"  

  tags = {
    Name = "public-subnet"
  }
}


resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.private_subnet_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b"  

  tags = {
    Name = "private-subnet"
  }
}




