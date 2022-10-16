variable "region" { 
  default = "us-east-1"
}


variable "path" { 
  description = "Path in which user will be created."
  default = "/"
}


variable "force_destroy" { 
  description = "When destroying this user, destroy even if it has non-Trreaform-managed IAM Access Key, login profiles or MFA"
  default = false
}

variable "username" { 
  type = list(string)
  default = ["test01", "test02", "raj01", "raj02"]
}
