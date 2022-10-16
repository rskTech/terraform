output "Public_IPs" { 
  value = aws_instance.east_frontend.*.public_ip
}
