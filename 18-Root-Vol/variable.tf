variable "region" { 
  default = "us-east-2" 
}

locals { 
  default_name = "${join("-", tolist([terraform.workspace, "example"]))}"
}


variable "instance_type" { 
 type = map 
 default = { 
   default = "t2.micro"
   dev     = "t2.nano"
   prod    = "t2.large"
 }
}

variable "instance_count" { 
  type = map 
  default = { 
   default = "1"
   dev = "2"
   prod = "3"
  }
}

variable "key_name" { 
  default = "terraform-demo-key-29-march-22"
}

variable "pvt_key" { 
  default = "/root/.ssh/my-ssh-key.pem"
}

variable "sg_id" { 
  default = "sg-00fdd16cba26f6527"
}
