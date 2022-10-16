variable "region" {
  default = "us-east-2"
}

locals {
  default_name = join("-", tolist([terraform.workspace, "example"]))
}

variable "instance_type" {
  type = map(any)
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"
  }
}


variable "instance_count" {
  type = map(any)
  default = {
    default = 1
    dev     = 2
    prod    = 3
  }
}


