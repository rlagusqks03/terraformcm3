resource "aws_ami_from_instance" "hbkim_ami" {
  name = "hbkim-ami"
  source_instance_id = aws_instance.hbkim_web.id
  depends_on = [
    aws_instance.hbkim_web
  ]
}