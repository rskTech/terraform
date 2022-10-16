resource "aws_instance" "east_frontend" {
  ami               = data.aws_ami.myami_east.id
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]
  count             = 2
  instance_type     = "t2.micro"
  depends_on        = [aws_instance.east_backend]
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    #Name = "${join("-", tolist([var.project-name, "Frontend"]))}-${count.index + 1}"
    Name = local.default_frontend_name
  }
}

resource "aws_instance" "west_frontend" {
  ami               = data.aws_ami.myami_west.id
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]
  instance_type     = "t2.micro"
  count             = var.multi-region-deployment ? 2 : 0
  depends_on        = [aws_instance.west_backend]
  provider          = aws.us-west-2
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = local.west_frontend_name
  }
}


resource "aws_instance" "east_backend" {
  ami               = data.aws_ami.myami_east.id
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]
  instance_type     = "t2.micro"
  count             = 2
  lifecycle {
    prevent_destroy = false
  }
  tags = {
    Name = local.default_backend_name
  }

}


resource "aws_instance" "west_backend" {
  ami               = data.aws_ami.myami_west.id
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]
  instance_type     = "t2.micro"
  count             = var.multi-region-deployment ? 2 : 0
  provider          = aws.us-west-2
  lifecycle {
    prevent_destroy = false
  }

  tags = local.some_tags

}
