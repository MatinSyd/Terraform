# Creating External LoadBalancer 
resource "aws_lb" "external-alb" { 
 name = "External LB" 
 internal = false 
 load_balancer_type = "application" 
 security_groups = [aws_security_group.demosg.id] 
 subnets = [aws_subnet.tf-pub-sn-1.id, aws_subnet.tf-pub-sn-2.id] 
} 
resource "aws_lb_target_group" "target-elb" { 
 name = "ALB TG" 
 port = 80 
 protocol = "HTTP" 
 vpc_id = aws_vpc.TF-VPC.id 
} 
resource "aws_lb_target_group_attachment" "attachment" { 
 target_group_arn = aws_lb_target_group.external-alb.arn 
 target_id = aws_instance.ec2-instance.id 
 port = 80 
depends_on = [ 
 aws_instance.ec2-instance, 
] 
} 
resource "aws_lb_target_group_attachment" "attachment" { 
 target_group_arn = aws_lb_target_group.external-alb.arn 
 target_id = aws_instance.ec2-ie.id 
 port = 80 
depends_on = [ 
 aws_instance.ec2-ie, 
] 
} 
