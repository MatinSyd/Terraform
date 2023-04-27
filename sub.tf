# Creating public subnet 
resource "aws_subnet" "tf-pub-sn-1" {
 vpc_id = "vpc-0e971a2c2041b0474"
 cidr_block = "192.168.100.0/24"
 map_public_ip_on_launch = true
 availability_zone = "us-west-2a"
tags = {
 Name = "tf-pub-sn-1"
}
}
# Creating private subnet 
resource "aws_subnet" "tf-pri-sn-2" {
 vpc_id = "vpc-0e971a2c2041b0474"
 cidr_block = "192.168.200.0/24"
 map_public_ip_on_launch = false 
 availability_zone = "us-west-2b"
tags = {
 Name = "tf-pri-sn-2"
}
}


