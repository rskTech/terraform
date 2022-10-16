provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "web" {
  # Amazon Linux AMI 
  ami           = "ami-0cea098ed2ac54925"
 
  # Ubuntu 22.04
  #ami = "ami-0d70546e43a941d70"
  instance_type = "t2.micro"

  lifecycle { 
    create_before_destroy = true
  }

  tags = {
    Name = "WebServer-AV"
    Team = "DevOps"
  }

}
