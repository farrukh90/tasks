# packer/ticket8 — fill in the blanks. Full instructions are in the Check Tasks panel.

packer {
  required_plugins {
    # your code goes here (the `amazon` plugin, source github.com/hashicorp/amazon)
  }
}

source "amazon-ebs" "ubuntu" {
  # your code goes here
  # region, instance_type, ssh_username = "ubuntu"
  # ami_name = "packer-ticket8-${formatdate("YYYYMMDDhhmmss", timestamp())}"  (prefix packer-ticket8-)
  # source_ami_filter: most-recent Ubuntu 22.04, owner 099720109477 (do NOT hardcode an AMI id)
  # tags = local.task_tags
  # remember: tags = local.task_tags AND run_tags
}

build {
  sources = ["source.amazon-ebs.ubuntu"]
  provisioner "shell" {
    # your code goes here (any small step, e.g. apt-get update)
  }
  post-processor "manifest" {
    # your code goes here (output = "manifest.json")
  }
}
