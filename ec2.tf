variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}
variable "region" {
  default = "ap-northeast-1"
}

provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "${var.region}"
}

resource "aws_instance" "hello_world_terraform" {
  ami           = "ami-04d3eb2e1993f679b"
  instance_type = "t2.micro"
  tags {
    Name = "rails-tutorial-application"
  }
}
