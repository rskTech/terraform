resource "aws_instance" "east_frontend" {
  ami               = "ami-051dfed8f67f095f5"
  instance_type     = "t2.micro"
  availability_zone = var.zones_east[count.index]
  count             = 2
  depends_on        = [aws_instance.east_backend]
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    #Name = "${join("-", tolist([var.project-name, "East-Frontend"]))}-${count.index + 1}"
    Team = "DevOps"
    Name = local.east_frontend_name 
  }
}

resource "aws_instance" "west_frontend" {
  ami               = "ami-0cea098ed2ac54925"
  instance_type     = "t2.micro"
  availability_zone = var.zones_west[count.index]
  # Conditions
  count             = var.multi-region-deployment ? 2 : 0 
  depends_on        = [aws_instance.west_backend]
  provider          = aws.us-west-2
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    #Name = "${join("-", tolist([var.project-name, "West-Frontend"]))}-${count.index + 1}"
    Team = "DevOps"
    Name = local.west_frontend_name
  }
}


resource "aws_instance" "east_backend" {
  ami               = "ami-051dfed8f67f095f5"
  instance_type     = "t2.micro"
  availability_zone = var.zones_east[count.index]
  count             = 2
  lifecycle {
    prevent_destroy = false
  }
  tags = {
    #Name = "${join("-", tolist([var.project-name, "East-Backend"]))}-${count.index + 1}"
    Team = "DevOps"
    Name = local.east_backend_name
    
  }
}


resource "aws_instance" "west_backend" {
  ami               = "ami-0cea098ed2ac54925"
  instance_type     = "t2.micro"
  availability_zone = var.zones_west[count.index]
  #count             = 2
  count             = var.multi-region-deployment ? 2 : 0 
  provider          = aws.us-west-2
  lifecycle {
    prevent_destroy = false
  }
/*
  tags = {
    #Name = "${join("-", tolist([var.project-name, "West-Backend"]))}-${count.index + 1}"
    Team = "DevOps"
    Name = local.west_backend_name
  }
*/

 tags = local.some_tags
}

