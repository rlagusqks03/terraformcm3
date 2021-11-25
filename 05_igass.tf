resource "aws_route_table_association" "hbkim_igas_puba"{
    subnet_id = aws_subnet.hbkim_puba.id
    route_table_id = aws_route_table.hbkim_rt.id


}
resource "aws_route_table_association" "hbkim_igas_pubc"{
    subnet_id = aws_subnet.hbkim_pubc.id
    route_table_id = aws_route_table.hbkim_rt.id


}