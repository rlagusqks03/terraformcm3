resource "aws_internet_gateway" "hbkim_ig"{
    vpc_id =aws_vpc.hbkim_vpc.id
    
    tags = {
        "Name" = "hbkim-ig"
    }
} 