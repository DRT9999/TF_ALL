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

variable "ami" {
  default = "ami-0fcc78c828f981df2"
}

variable "vpc_security_group_ids" {
  default = ["sg-052508cac91923258"]
}

# variable "zone_id" {
#   default = "Z07751981R2BJB8158UIQ"
# }