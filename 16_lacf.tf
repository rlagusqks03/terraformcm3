resource "aws_launch_configuration" "hbkim_lacf" {
    name ="hbkim-lacf"
    image_id = aws_ami_from_instance.hbkim_ami.id
    instance_type = "t2.micro"
    iam_instance_profile = "admin_role" 
    security_groups = [aws_security_group.hbkim_sg.id]
    key_name = "hbkim1-key"
    user_data = <<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
}