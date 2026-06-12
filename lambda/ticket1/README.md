# Lambda — Ticket 1

Build an AWS Lambda function (with its execution role) using Terraform.

## Your task

Complete the skeleton files in this folder so that:

1. `provider.tf` configures the `aws` provider with **region `us-east-1`**.
2. `lambda.tf` defines:
   - an `aws_iam_role` execution role the function can assume
     (trust policy for `lambda.amazonaws.com`), and
   - an `aws_lambda_function` with a valid **`runtime`**
     (e.g. `python3.12`, `nodejs20.x`, …) and a **`handler`**.
3. `output.tf` exposes the function's ARN.

Then run `terraform init` and `terraform plan` in this folder.

> Keep the `tags = local.task_tags` lines — they are used for grading.
> Click **Check Tasks** when you're done.
