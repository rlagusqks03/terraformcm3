resource "aws_route_table" "hbkim_ngwrt" {
vpc_id = aws_vpc.hbkim_vpc.id

route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.hbkim_ngw.id
}

}