data "aws_ami" "amzn" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}


resource "aws_instance" "hbkim_web"{
    ami = data.aws_ami.amzn.id
    instance_type = "t2.micro"
    key_name = "hbkim1-key"
    vpc_security_group_ids = [aws_security_group.hbkim_sg.id]
    availability_zone = "ap-northeast-2a"
    private_ip = "10.0.0.11"
    subnet_id = aws_subnet.hbkim_puba.id

    tags ={
        "Name" = "hbkim-web"
    }

}
resource "aws_eip" "hbkim_web"{
    vpc = true
    instance = aws_instance.hbkim_web.id
    associate_with_private_ip = "10.0.0.11"
}

output "public_ip" {
  value = aws_instance.hbkim_web.public_ip
  
}
