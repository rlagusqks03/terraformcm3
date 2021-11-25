resource "aws_route_table_association" "hbkim_ngwass_pria"{
subnet_id = aws_subnet.hbkim_pria.id
route_table_id = aws_route_table.hbkim_ngwrt.id
}

resource "aws_route_table_association" "hbkim_ngwass_pric"{
subnet_id = aws_subnet.hbkim_pric.id
route_table_id = aws_route_table.hbkim_ngwrt.id
}

resource "aws_route_table_association" "hbkim_ngwass_pridba"{
subnet_id = aws_subnet.hbkim_pridba.id
route_table_id = aws_route_table.hbkim_ngwrt.id
}

resource "aws_route_table_association" "hbkim_ngwass_pridbc"{
subnet_id = aws_subnet.hbkim_pridbc.id
route_table_id = aws_route_table.hbkim_ngwrt.id
}