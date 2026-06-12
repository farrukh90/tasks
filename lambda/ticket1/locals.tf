# Do not alter below tags
locals {
  task_tags = {
    Topic     = "lambda",
    Ticket    = "1"
    Env       = "Dev"
    Team      = "DevOps"
    quarter   = "Q1"
    CreatedBy = "DevOps"
    region    = "us-east-1"
  }
}
