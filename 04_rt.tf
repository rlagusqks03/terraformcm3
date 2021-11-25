resource "aws_route_table" "hbkim_rt"{
    vpc_id =aws_vpc.hbkim_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.hbkim_ig.id

    }

    tags = {
        "Name" = "hbkim-rt"
    }



}