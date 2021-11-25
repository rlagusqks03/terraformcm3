resource "aws_eip" "hbkim_ngw_ip"{
vpc = true
}

resource "aws_nat_gateway" "hbkim_ngw"{
allocation_id = aws_eip.hbkim_ngw_ip.id
subnet_id = aws_subnet.hbkim_puba.id
tags = {
    "Name" = "hbkim-ngw"
}
}

