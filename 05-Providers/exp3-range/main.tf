terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.60.0, <=3.65.0"
    }
  }
}






provider "aws" {
  region = "us-west-2"
}




resource "aws_instance" "frontend" {
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
}


