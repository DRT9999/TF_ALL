module "test" {
    source = "./s1"
    color = var.color
}

variable "color" {
    default = ["red","yellow"]
}

output "dev" {
    value = module.test.
}