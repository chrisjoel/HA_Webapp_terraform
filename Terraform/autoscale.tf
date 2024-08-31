##Author: Joel Ebenka
# Create Auto Scaling Group
resource "aws_launch_template" "terraform_temp" {
  name_prefix   = "30_days_Challenge"
  image_id      = "ami-02e136e904f3da870"
  instance_type = var.aws_instance_type
}

# Auto Scaling Group
resource "aws_autoscaling_group" "terraform_group" {
  name               = "Terraform-ASG1"
  desired_capacity   = 2
  max_size           = 5
  min_size           = 2
  target_group_arns   = [aws_lb_target_group.web_tg.arn]
  vpc_zone_identifier = [aws_default_subnet.default_az1.id, aws_default_subnet.default_az2.id]
  launch_template {
    id      = aws_launch_template.terraform_temp.id
    version = "$Latest"
  }
# Required when using a launch configuration with an auto scaling group.
 lifecycle {
    create_before_destroy = true
  }
}
