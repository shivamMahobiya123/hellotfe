/*
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["925975727637"] #check and select
  filter {
    name   = "name"
    values = ["${var.aws_name}"]
  }
  filter {
    name   = "root-device-type" #check and select
    values = ["${var.root_device_type}"]
  }
  filter {
    name   = "virtualization-type" #check and select
    values = ["${var.virtualization_type}"]
  }
}
  output "aws_id" {
  value = data.aws_ami.ubuntu.id
} 

resource "aws_instance" "web" {
  count         = 1
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  #key_name      = "linux-keypair"
  key_name = aws_key_pair.key-tf.key_name

  tags = {
    "Name" = "linux-vm"

  }

   network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }
  
} */