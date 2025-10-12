resource "aws_instance" "frontend" {
    count = length(var.comp)
    ami = "ami-0fcc78c828f981df2"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-052508cac91923258"] 

    tags = {

        Name = var.comp[count.index]
    }
}

variable "comp" {

    default = ["frontend","mysql","backend"]
  
}