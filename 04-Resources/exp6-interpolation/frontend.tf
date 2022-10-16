resource "aws_instance" "frontend" {
  ami           = "ami-0cea098ed2ac54925"
  instance_type = "t2.micro"
  depends_on = [ aws_instance.backend ]
  count = 2

  tags = {
    Name = "Frontend-AV-${count.index +1}" 
  } 
}
