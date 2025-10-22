data "aws_route53_zone" "main" {
    name = "exp.in"
    private_zone = true
}

data "aws_security_group" "name" {
    filter {
      name = "group-name"
      values = ["ALL"]
    }
}

data "aws_ami" "example" {
  most_recent      = true
  name             = "RAVITEJA"
  name_regex       = "DEVOPS_EXP"  #"ami-0fcc78c828f981df2"
  owners           = ["469861001016"]
}

data "aws_ami" "example" {
  most_recent = true

  filter {
    name   = "RAVITEJA"
    values = ["ami-00fecb3c6f225dbe9"]
  }
  owners = ["469861001016"] # Amazon
}