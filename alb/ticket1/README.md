# ALB — Ticket 1

Build an Application Load Balancer (ALB) using Terraform.

## Your task

Complete the skeleton files in this folder so that:

1. `provider.tf` configures the `aws` provider with **region `us-east-1`**.
2. `alb.tf` defines:
   - an `aws_lb` with **`load_balancer_type = "application"`**,
   - an `aws_lb_target_group`, and
   - an `aws_lb_listener` that forwards to the target group.
3. `output.tf` exposes the load balancer's DNS name.

Then run `terraform init` and `terraform plan` in this folder.

> Keep the `tags = local.task_tags` lines — they are used for grading.
> Click **Check Tasks** when you're done.
