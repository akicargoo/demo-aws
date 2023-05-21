#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
EC2_AVAIL_ZONE=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
echo "<h1>Hello World from $(hostname -f) in AZ $EC2_AVAIL_ZONE </h1>" > /var/www/html/index.html



13.229.182.62   ap-southeast-1
3.87.218.2      us-east-1
3.34.137.111    ap-northeast-2

http://demo-alb-route-53-1420532305.ap-northeast-2.elb.amazonaws.com/
                