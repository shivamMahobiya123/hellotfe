output "filename1" {
  value = "Filename 1"
}
#map variable added in this file
variable "userage" {
  type = map(any)
  default = {
    gaurav = 34
    madhav = 35
  }
}
variable "username" {
  type = string
}
output "useage" {
  value = "my age is ${lookup(var.userage, var.username)}"
}