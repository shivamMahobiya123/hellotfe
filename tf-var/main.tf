variable "name" {
    type = string
}
variable "age" {
    type = number
}
output "info" {
    value = "Your name is, ${var.name}, and age is, ${var.age}"
}