resource "aws_iam_role" "lambda_exec" {
  # Your code goes here
  # Define an assume-role policy that lets lambda.amazonaws.com assume this role.

  # Do not change below tags
  tags = local.task_tags
}

resource "aws_lambda_function" "this" {
  # Your code goes here
  # Required: function_name, role = aws_iam_role.lambda_exec.arn, a deployment
  # package (filename/s3_*), and set the two attributes below.
  # runtime = "python3.12"
  # handler = "index.handler"

  # Do not change below tags
  tags = local.task_tags
}
