resource "aws_lb_target_group_attachment" "hbkim_albtagatt" {
  
target_group_arn = aws_lb_target_group.hbkim_albtg.arn
target_id = aws_instance.hbkim_web.id
port = 80
}