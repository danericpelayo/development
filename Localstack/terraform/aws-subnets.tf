resource "aws_subnet" "subnet-public" {
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.vpc-production.id
  tags = {
    Environment = var.environment_tag
    Name        = "subnet-public"
  }
}