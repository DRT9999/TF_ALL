module "test" {
    source = "./s1"
    color = var.color
}

variable "color" {}

output "dev" {
    value = module.test.msg
}