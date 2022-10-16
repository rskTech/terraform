resource "aws_instance" "frontend" { 
  ami = data.aws_ami.myami.id
  instance_type = lookup(var.instance_type, terraform.workspace) 
  count =  lookup(var.instance_count, terraform.workspace)
  key_name = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = { 
    Name = local.default_name
  }

connection { 
  type = "ssh"
  user = "ec2-user"
  private_key = file(var.pvt_key)
  host        = self.public_ip
}


provisioner "remote-exec" { 
   inline = [ 
     "sudo yum install httpd -y",
     "sudo service httpd start",
   ]

}

}
