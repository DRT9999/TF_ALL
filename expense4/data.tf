data "aws_route53_zone" "main" {
    name = "exp.in"
    private_zone = true
}

data "aws_security_group" "name" {
    filter {
      name = "group-name"
      values = ["default"]
    }
}

data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "ami-0fcc78c828f981df2"
  owners           = [""]
}