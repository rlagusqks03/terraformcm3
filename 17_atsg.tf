resource "aws_placement_group" "hbkim_pg" {
  name     = "hbkim-pg"
  strategy = "cluster"


}

resource "aws_autoscaling_group" "hbkim_atsg" {
  name                      = "hbkim-atsg"
  min_size                  = 2
  max_size                  = 10
  health_check_grace_period = 60
  health_check_type         = "EC2"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.hbkim_lacf.name
  #placement_group = aws_placement_group.hbkim_pg.id
  vpc_zone_identifier = [aws_subnet.hbkim_puba.id, aws_subnet.hbkim_pubc.id]

}
