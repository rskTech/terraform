locals { 
  default_frontend_name = join("_", tolist([var.project-name, "Frontend"]))
  default_backend_name = join("_", tolist([var.project-name, "backend"]))
  west_frontend_name = join("-", tolist([var.project-name-2, "Frontend"]))
  west_backend_name = join("-", tolist([var.project-name-2, "Backend"]))
}

locals { 
  some_tags = { 
     Owner = "DevOps Team" 
     Project = "POC DevOps Terraform Project"
     Type    = "Backend"
     Name    = local.west_backend_name
  
  }
}

