provider "aws" {
version = "3.10"
region  = "us-east-2"
}

resource "aws_security_group" "demo-sg" {
  name  = "demo-sample-sg-1"
  description = "Allow Inbound Traffic to multiple ports"

egress { 
  from_port = 443
  to_port   = 443
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress { 
  from_port = 443
  to_port   = 443
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress { 
  from_port = 8200
  to_port   = 8200
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

ingress { 
  from_port = 8220
  to_port   = 8220
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress { 
  from_port = 8230
  to_port   = 8230
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress { 
  from_port = 8240
  to_port   = 8240
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress { 
  from_port = 8201
  to_port   = 8201
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress { 
  from_port = 8202
  to_port   = 8202
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress { 
  from_port = 8300
  to_port   = 8300
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress { 
  from_port = 8080
  to_port   = 8080
  protocol  = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

tags = {
  Name  = "demo-tf-sg"
}

}


