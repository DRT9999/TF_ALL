resource "aws_instance" "Expenes" {
    #count = length(var.comp)
    #for_each = var.comp
    ami                     = var.ami  #"ami-0fcc78c828f981df2"
    instance_type           = var.instance_type #try (each.value["instance_type"], null) == ".*" ? each.value["instance_type"] : "t2.small"
    vpc_security_group_ids  = var.vpc_security_group_ids  #["sg-052508cac91923258"] 

    tags = {
        Name = var.name
    }
}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "${var.name}-qa.exp.in"
  type    = "A"
  ttl     = 10
  records = [aws_instance.Expenes.private_ip]
}

