variable "name" {
    type = string
}

output "info" {
    value = "Your name is, ${var.name}"
}