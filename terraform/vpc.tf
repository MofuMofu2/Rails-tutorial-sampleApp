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

resource "aws_vpc" "hello_world_terraform" {
  cidr_block            = "10.1.0.0/16"
  instance_tenancy      = "dedicated"
  enable_dns_support    = "true"
  enable_dns_hostnames  = "true"
  tags {
    Name = "hello_world_terraform"
  }
}
