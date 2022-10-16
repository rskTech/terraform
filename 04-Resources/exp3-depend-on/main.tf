provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "frontend" {
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  depends_on = [ aws_instance.backend ]
}



resource "aws_instance" "backend" {
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"

}
