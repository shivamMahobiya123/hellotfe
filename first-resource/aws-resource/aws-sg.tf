resource "aws_security_group" "allow_tls" { #SECURITY GROUP IS MUTTABLE
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      description = "TLS fro VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp."
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  /*
  ingress {
    description      = "TLS from VPC"
    from_port        = 22 #for ssh commnication
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "TLS from VPC"
    from_port        = 80 #for port http
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "TLS from VPC"
    from_port        = 443 #for port https or http
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
*/
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
