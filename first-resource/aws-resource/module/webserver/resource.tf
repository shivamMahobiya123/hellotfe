#create  ssh-key
resource "aws_key_pair" "key_tf" {
  key_name   = "${var.key_name}"
  public_key = "${var.key}"
}
resource "aws_instance" "web" {
  ami           =  var.image_id
  instance_type =  var.instance_type
  key_name      =  aws_key_pair.key_tf.key_name

  tags = {
    "Name" = "linux-vm"

  }

  /* network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }
  */
}