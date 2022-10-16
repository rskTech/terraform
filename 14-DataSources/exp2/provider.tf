provider "aws" {
  version = "3.20"
  region  = "us-east-2"
}


provider "aws" {
  version = "3.20"
  region  = "us-west-2"
  alias   = "us-west-2"
}

