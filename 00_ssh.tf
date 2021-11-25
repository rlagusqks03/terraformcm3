resource "aws_key_pair" "hbkim1-key"{
    key_name = "hbkim1-key"
    public_key = file("../../.ssh/hbkim1-key.pub")

}