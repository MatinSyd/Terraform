# Creating Route Table 
resource "aws_route_table" "tf-rt" { 
 vpc_id = "vpc-0e971a2c2041b0474" 
route { 
 cidr_block = "0.0.0.0/0" 
 gateway_id = "igw-0a035e34239da5d1f" 
 } 
tags = { 
 Name = "tf-rt" 
 } 
}


