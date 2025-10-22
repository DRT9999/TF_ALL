module "App" {
    for_each = var.comp
    source = "./app"
    ami                    = data.aws_ami.example.id  #var.ami                 #"ami-0fcc78c828f981df2"
    instance_type          = each.value["instance_type"]                   #try (each.value["instance_type"], null) == ".*" ? each.value["instance_type"] : "t2.small"
    vpc_security_group_ids = [data.aws_security_group.name.id]
    name                   = each.key
    zone_id                = data.aws_route53_zone.main.id 
}

