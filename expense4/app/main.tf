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

resource "aws_route53_record" "DNS" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.exp.in"
  type    = "A"
  ttl     = 10
  records = [aws_instance.Expenes.private_ip]
}

resource "null_resource" "exp" {
  depends_on = [ aws_route53_record.DNS ,aws_instance.Expenes ]  
  triggers = {
    always_run = true
  }
  provisioner "local-exec" {
    command = "sleep 20 ; cd /home/ec2-user/Ansible/ALL_ENV_Ansible ; ansible-playbook -i inv-dev -e ansible_user=ec2-user -e ansible_password=DevOps321 -e COMP=${var.name} -e env=dev -e pwd=ExpenseApp@1 expense.yml|bash"
  } #${aws_instance.Expenes.private_ip},
}

