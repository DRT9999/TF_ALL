resource "null_resource" "name" {
    count = length(var.color)


}

variable "color" {
  
}

output "msg" {
    value = "Welcome to world"
  
}