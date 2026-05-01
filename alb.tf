# Creating Load Balancer
resource "aws_lb" "myalb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.webseverSg.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

}

# Creating Target_Group
resource "aws_lb_target_group" "tg" {
  name     = var.tg_name
  port     = var.http_port
  protocol = var.protocol_type
  vpc_id   = aws_vpc.myvpc.id

  health_check {
    path = "/"
    port = "traffic-port"
  }
}

# Attaching Load Balancer
resource "aws_lb_target_group_attachment" "attach1" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.webserver1.id
  port             = var.http_port
}

resource "aws_lb_target_group_attachment" "attach2" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.webserver2.id
  port             = var.http_port
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.myalb.arn
  port              = var.http_port
  protocol          = var.protocol_type

  default_action {
    target_group_arn = aws_lb_target_group.tg.arn
    type             = "forward"
  }
}

