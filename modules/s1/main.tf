resource "null_resource" "name" {
    count = length(var.color)


}

variable "color" {
  
}