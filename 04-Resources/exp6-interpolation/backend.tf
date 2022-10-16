resource "aws_instance" "backend" {
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"

}
