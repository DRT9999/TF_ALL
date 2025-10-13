data "aws_route53_zone" "main" {
    name = "exp.in"
    private_zone = true
  
}

data "aws_security_group" "name" {
    filter {
      name = "group-name"
      values = [ "default" ]
    }
}

