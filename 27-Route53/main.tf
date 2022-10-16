resource "aws_route53_zone" "main" {
  name = "my-terraform-example.com"
}

resource "aws_route53_record" "dev-ns" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "dev.my-terraform-example.com"
  type    = "A"
  ttl     = "300"
  records = ["192.168.100.100"]
}


resource "aws_route53_record" "www01" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "www.my-terraform-example.com"
  type    = "A"
  ttl     = "300"
  records = ["192.168.100.105"]
}


resource "aws_route53_record" "www02" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "accenture.my-terraform-example.com"
  type    = "A"
  ttl     = "300"
  records = ["192.168.100.102"]
}

