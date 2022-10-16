resource "aws_instance" "east_frontend" {
  ami               = data.aws_ami.myami.id
  count             = var.ec2_count
  instance_type     = var.type
  tags = {
    Name = "My-Test-Instance-${count.index}"
  }
}
