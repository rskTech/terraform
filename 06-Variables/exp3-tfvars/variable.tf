variable "zones" { 
  type = list(string)
  default = ["us-west-2c", "us-west-2b"]
}

variable "myname" {
  type = string
  default = "mydefault-instances"
}

