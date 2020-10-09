variable "region" {}
variable "access_key" {}
variable "secret_key" {}


provider "aws" {
 region = var.region
 access_key = var.access_key
secret_key = var.secret_key
}

 

resource "aws_vpc" "main2" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

 

  tags = {
    Name = "main2"
  }
}
