provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  count = 2 
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  availability_zone = var.zones[count.index]

  tags = {
    Name = "${join("-", tolist([var.myname]))}-${count.index}"
    Team = "DevOps"
  }

}
