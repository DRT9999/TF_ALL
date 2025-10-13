data "aws_route53_zone" "main" {
    name = "exp.in"
    private_zone = true
  
}

# output "zone_info" {
#     value = data.aws_route53_zone.main
  
# }