module "test" {
    source = "./s1"
    color = var.color
}

variable "color" {
    default = ["red","yellow"]
}