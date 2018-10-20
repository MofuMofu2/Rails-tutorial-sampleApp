resource "aws_security_group" "hello_world_terraform" {
  name = "hello_world_terraform"
  description = "for studying terraform"
  vpc_id = "${aws_vpc.hello_world_terraform.id}"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

  tags {
    Name = "Rails tutorial application"
  }
}
