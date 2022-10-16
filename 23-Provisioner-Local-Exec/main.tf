resource "aws_instance" "frontend" { 
  ami = data.aws_ami.myami.id
  #ami = "ami-052efd3df9dad4825"
  instance_type = lookup(var.instance_type, terraform.workspace) 
  key_name = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = { 
    Name = local.default_name
  }

/*
connection { 
  type = "ssh"
  user = "ubuntu"
  private_key = file(var.pvt_key)
  host        = self.public_ip
}


provisioner "file" { 
  source = "./frontend"
  destination = "/home/ec2-user/frontend"
}


provisioner "remote-exec" { 
   inline = [ 
     "sudo chmod +x ~/frontend/run_frontend.sh",
     "sudo sh  ~/frontend/run_frontend.sh",
   ]

}
*/

}


resource "null_resource" "ansible" { 
 provisioner "local-exec" { 
   command = <<EOF
    > ansible-ci.ini; 
    echo "[ansible-ci]"|tee -a ansible-ci.ini; 
    export ANSIBLE_HOST_KEY_CHECKING=False;
    echo "${aws_instance.frontend.public_ip}"|tee -a ansible-ci.ini;
    ansible-playbook --key-file=${var.pvt_key} -i ansible-ci.ini -u ubuntu ./ansible-code/webserver.yaml
   EOF 

 }
 triggers = {
  always_run = timestamp()
 }

depends_on = [aws_instance.frontend]

}
