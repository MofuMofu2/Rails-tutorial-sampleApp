resource "aws_vpc" "hello_world_terraform" {
  cidr_block            = "10.1.0.0/16"
  instance_tenancy      = "dedicated"
  enable_dns_support    = "true"
  enable_dns_hostnames  = "true"
  tags {
    Name = "hello_world_terraform"
  }
}

resource "aws_subnet" "subnet-a" {
  vpc_id                  = "${aws_vpc.hello_world_terraform.id}"
  cidr_block              = "10.1.0.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true
  tags {
    Name = "hello_world_terraform_subnet-a"
  }
}

resource "aws_subnet" "subnet-c" {
  vpc_id                  = "${aws_vpc.hello_world_terraform.id}"
  cidr_block              = "10.1.10.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true
  tags {
    Name = "hello_world_terraform_subnet-c"
  }
}

resource "aws_internet_gateway" "web_gateway" {
  vpc_id = "${aws_vpc.hello_world_terraform.id}"
}


resource "aws_route_table" "main" {
  vpc_id = "${aws_vpc.hello_world_terraform.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.web_gateway.id}"
  }
}

resource "aws_route_table_association" "subnet-a" {
  subnet_id       = "${aws_subnet.subnet-a.id}"
  route_table_id  = "${aws_route_table.main.id}"
}

resource "aws_route_table_association" "subnet-c" {
  subnet_id       = "${aws_subnet.subnet-c.id}"
  route_table_id  = "${aws_route_table.main.id}"
}
