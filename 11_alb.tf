resource "aws_lb" "hbkim_alb" {
    name = "hbkim-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.hbkim_sg.id]
    subnets = [aws_subnet.hbkim_puba.id,aws_subnet.hbkim_pubc.id]
    tags = {
      "Name" = "hbkim-alb"
    }


}