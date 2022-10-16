provider "aws" {
  region = "us-west-2"
}

variable "zones" { 
  type = list(string)
  default = ["us-west-2c", "us-west-2b"]
}


resource "aws_instance" "web" {
  count = 2 
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  availability_zone = var.zones[count.index]

  tags = {
    Name = "WebServer-AV"
    Team = "DevOps"
  }

}
