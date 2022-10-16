output "PublicIP_East_Frontend" {
  value = aws_instance.east_frontend.*.public_ip
}

output "PublicIP_East_Backend" {
  value = aws_instance.east_backend.*.public_ip
}

output "tag_name" {
  value = concat(aws_instance.east_frontend.*.tags.Name,aws_instance.west_frontend.*.tags.Name, aws_instance.west_backend.*.tags.Name, aws_instance.east_backend.*.tags.Name)
}
