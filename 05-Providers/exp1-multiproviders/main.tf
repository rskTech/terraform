provider "aws" {
  region = "us-west-2"
}


provider "aws" {
  region = "us-east-2"
  alias  = "myregion"
}


resource "aws_instance" "frontend" {
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
}



resource "aws_instance" "backend" {
  provider = aws.myregion
  ami           = "ami-051dfed8f67f095f5"
  instance_type = "t2.micro"
}
