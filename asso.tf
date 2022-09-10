# Associating Route Table 
resource "aws_route_table_association" "rt1" { 
 subnet_id = "subnet-0de1cfd141ccb6892" 
 route_table_id = "rtb-0e179259d0c7f9297" 
} 
# Associating Route Table 
resource "aws_route_table_association" "rt2" { 
 subnet_id = "subnet-09c23ed31d9cc15a9"
 route_table_id = "rtb-0e179259d0c7f9297"
}
