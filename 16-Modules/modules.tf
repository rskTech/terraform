module "frontend" { 
  source = "./modules/ec2"
  ec2_count = var.frontend_instance_count 
}



module "backend" { 
  source = "./modules/ec2"
  region = var.backend_region
  ec2_count = var.backend_instance_count 
}



module "myec2" { 
  source = "./modules/ec2"
}
