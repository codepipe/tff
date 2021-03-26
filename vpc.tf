provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA5KOY4NEOEZ4VCKGU"
  secret_key = "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"
}

resource "aws_vpc" "demo" {
  cidr_block       = "70.70.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
  }
}
resource "aws_subnet" "demo1" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "70.70.1.0/28"

  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "demo2" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "70.70.1.16/28"

  tags = {
    Name = "subnet2"
  }
}
resource "aws_internet_gateway" "massgw" {
  vpc_id = aws_vpc.demo.id

  tags = {
    Name = "mass"
  }
}
resource "aws_route_table" "Pu_RT" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block = "70.0.1.0/28"
    gateway_id = aws_internet_gateway.massgw.id
  }

  tags = {
    Name = "massian"
  }
}
