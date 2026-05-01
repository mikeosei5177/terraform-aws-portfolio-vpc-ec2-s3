resource "aws_instance" "webserver1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.webseverSg.id]
  subnet_id              = aws_subnet.subnet1.id
  user_data_base64       = base64encode(file("userdata.sh"))

  tags = {
    Name = var.instance_name1
  }
}

resource "aws_instance" "webserver2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.webseverSg.id]
  subnet_id              = aws_subnet.subnet2.id
  user_data_base64       = base64encode(file("userdata1.sh"))

  tags = {
    Name = var.instance_name2
  }
}

