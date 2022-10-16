data "aws_ami" "myami" {
  most_recent = true
  owners = ["amazon"]

 filter {
  name = "name"
  values = ["amzn2-ami-hvm*"]
  }

}
