# Creating 1st EC2 instance in Public Subnet 
resource "aws_instance" "ec2-instance" { 
 ami = "ami-0c2ab3b8efb09f272" 
 instance_type = "t2.micro" 
 count = 1 
 key_name = "Tera-key" 
 vpc_security_group_ids = ["sg-06eb8f16782ad67d1"] 
 subnet_id = "subnet-0de1cfd141ccb6892" 
 associate_public_ip_address = true 
 user_data = "data.sh" 
tags = { 
 Name = "candy" 
} 
} 


# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "ec2-ie" {
 ami = "ami-0c2ab3b8efb09f272"
 instance_type = "t2.micro"
 count = 1
 key_name = "Tera-key"
 vpc_security_group_ids = ["sg-06eb8f16782ad67d1"]
 subnet_id = "subnet-09c23ed31d9cc15a9"
 associate_public_ip_address = true
 user_data = "data2.sh"
tags = {
 Name = "mario"
}
}

