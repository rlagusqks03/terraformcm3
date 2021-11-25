#가용영역 a의 public subnet
resource "aws_subnet" "hbkim_puba"{
    vpc_id = aws_vpc.hbkim_vpc.id 
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
        "Name" = "hbkim-puba"
    }
}

resource "aws_subnet" "hbkim_pubc"{
    vpc_id = aws_vpc.hbkim_vpc.id 
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
        "Name" = "hbkim-pubc"
    }
}

resource "aws_subnet" "hbkim_pria"{
    vpc_id =aws_vpc.hbkim_vpc.id 
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
        "Name" = "hbkim-pria"
    }
}

resource "aws_subnet" "hbkim_pric"{
    vpc_id = aws_vpc.hbkim_vpc.id 
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
        "Name" = "hbkim-pric"
    }
}

resource "aws_subnet" "hbkim_pridba"{
    vpc_id = aws_vpc.hbkim_vpc.id 
    cidr_block = "10.0.4.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
        "Name" = "hbkim-pridba"
    }
}

resource "aws_subnet" "hbkim_pridbc"{
    vpc_id = aws_vpc.hbkim_vpc.id 
    cidr_block = "10.0.5.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
        "Name" = "hbkim-pridbc"
    }
}