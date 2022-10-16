data "aws_availability_zones" "zone_east" {}
data "aws_availability_zones" "zone_west" {
   provider = aws.us-west-2
}

data "aws_ami" "myami_east" {
  most_recent = true
  owners = ["amazon"]

 filter {
  name = "name"
  values = ["amzn2-ami-hvm*"]
  }

}

data "aws_ami" "myami_west" {
  provider = aws.us-west-2
  most_recent = true
  owners = ["amazon"]

 filter {
  name = "name"
  values = ["amzn2-ami-hvm*"]
  }

}

