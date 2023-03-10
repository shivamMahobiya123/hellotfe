variable "ports" {
  type = list(number)
}
variable "network_interface_id" {
  type = string
}
variable "image_id" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
variable "aws_name" {
  type = string
}
variable "root_device_type" {
  type = string
}
variable "virtualization_type" {
  type = string
}
variable "key_name" {
  type = string
}