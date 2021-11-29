resource "aws_autoscaling_attachment" "hbkim_asatt" {
  autoscaling_group_name = aws_autoscaling_group.hbkim_atsg.id
  alb_target_group_arn   = aws_lb_target_group.hbkim_albtg.arn

  
}