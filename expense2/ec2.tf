resource "aws_instance" "frontend" {
    #count = length(var.comp)
    for_each = var.comp
    ami = "ami-0fcc78c828f981df2"
    instance_type = each.value["instance_type"]
    vpc_security_group_ids = ["sg-052508cac91923258"] 

    tags = {

        Name = each.key
    }
}

variable "comp" {

    default = {
        frontend = {                                # each.key
            instance_type =  "t2.micro"
        }
        mysql ={
            instance_type =  "t2.micro"             # each.value
        }
        backend ={
            instance_type =  "t2.micro"
        }
  
    }   
}