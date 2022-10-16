resource "aws_instance" "dev-app" { 
  ami = data.aws_ami.myami.id
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  
  tags = { 
    Name = local.default_name
  }

}

resource "aws_ebs_volume" "my-vol" { 
  availability_zone = "us-east-2a"
  size = 40

  tags = {
    Name = "my-vol-ebs"
   }

}


resource "aws_volume_attachment" "ebs_att" {
   device_name = "/dev/sdh"
   volume_id   = aws_ebs_volume.my-vol.id
   instance_id = aws_instance.dev-app.id
}

