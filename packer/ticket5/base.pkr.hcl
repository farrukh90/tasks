# packer/ticket5 — fill in the blanks. Full instructions are in the Check Tasks panel.

packer {
  required_plugins {
    # your code goes here (the `amazon` plugin, source github.com/hashicorp/amazon)
  }
}

source "amazon-ebs" "ubuntu" {
  # your code goes here
  # region, instance_type, ssh_username = "ubuntu"
  # ami_name = "packer-ticket5-${formatdate("YYYYMMDDhhmmss", timestamp())}"  (prefix packer-ticket5-)
  # source_ami_filter: most-recent Ubuntu 22.04, owner 099720109477 (do NOT hardcode an AMI id)
  # tags = local.task_tags
  # your code goes here: encrypt_boot = true
  # launch_block_device_mappings { ... root gp3, delete_on_termination = true ... }
}

build {
  sources = ["source.amazon-ebs.ubuntu"]
  provisioner "shell" {
    # your code goes here. inline = [ ... ] — wait for cloud-init FIRST, then apt:
    #   "sudo cloud-init status --wait",   # don't race first-boot cloud-init (dpkg/apt lock)
    #   "sudo apt-get update",
    #   "sudo apt-get clean"
  }
}
