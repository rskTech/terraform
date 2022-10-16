output "Public_IPs_Front" { 
  #value = module.frontend.aws_instance.east_frontend.*.public_ip
  value = module.frontend.Public_IPs
}


output "Public_IPs_Back" { 
  #value = module.frontend.aws_instance.east_frontend.*.public_ip
  value = module.backend.Public_IPs
}
