resource "aws_security_group" "sg_dynamic" {
  name = var.sg_name

    tags = {
    Name = "sg_dynamic"
  }


  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

}    