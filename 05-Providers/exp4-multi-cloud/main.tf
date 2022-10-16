provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "frontend" {
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
}


provider "azurerm" { 
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-RG"
  location = "West Europe"
  
  tags = { 
    Name = "HelloWorld-Azure-RG"
    Owner = "Amit Vashist" 
    Project = "IAC"
    Team  = "DevOps"
  }
}


