resource "aws_lb" "this" {
  # Your code goes here
  # Required: name, subnets (>= 2 AZs), security_groups, and:
  # load_balancer_type = "application"

  # Do not change below tags
  tags = local.task_tags
}

resource "aws_lb_target_group" "this" {
  # Your code goes here
  # Required: name, port, protocol, vpc_id

  # Do not change below tags
  tags = local.task_tags
}

resource "aws_lb_listener" "this" {
  # Your code goes here
  # Required: load_balancer_arn = aws_lb.this.arn, port, protocol, and a
  # default_action that forwards to aws_lb_target_group.this.arn
}
