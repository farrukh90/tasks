# Do not alter below tags. Apply them to your AMI with:  tags = local.task_tags
locals {
  task_tags = {
    Topic     = "packer"
    Ticket    = "4"
    Env       = "Dev"
    Team      = "DevOps"
    CreatedBy = "DevOps"
    region    = "us-east-1"
    project_name = "evolvecyber"
    domain       = "evolvecyber.com"
  }
}
