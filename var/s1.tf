#variable "ab" {}  empty variable

variable "a" {
  default = 10
}

output "name" {
  value = var.a
}