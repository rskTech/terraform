provider "aws" {
  region     = "us-east-1"
  version    = ">3.7"
}

resource "aws_cloudformation_stack" "example" {
  name = "terraform-demo"
  
  template_body = file("${path.module}/example.yml")

}
