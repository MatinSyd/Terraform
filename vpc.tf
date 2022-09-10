# Creating VPC 
resource "aws_vpc" "TF-VPC" { 
 cidr_block = "192.168.0.0/16" 
 instance_tenancy = "default" 
tags = { 
 Name = "TF-VPC" 
} 
} 
