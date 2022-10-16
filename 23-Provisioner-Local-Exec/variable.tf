variable "region" { 
  default = "us-east-2" 
}

locals { 
  default_name = "${join("-", tolist([terraform.workspace, "example"]))}"
}


variable "instance_type" { 
 type = map 
 default = { 
   default = "t2.nano"
   dev     = "t2.micro"
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
  default = "terraform-key-25-Aug-2022"
}

variable "pvt_key" { 
  default = "/home/rajendra/.ssh/.my-pvt-aws.pem"
}

variable "sg_id" { 
  default = "sg-0d32d92f4a9435c55"
}
