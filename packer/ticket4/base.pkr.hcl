# packer/ticket4 — fill in the blanks. Full instructions are in the Check Tasks panel.

packer {
  required_plugins {
    # your code goes here (the `amazon` plugin, source github.com/hashicorp/amazon)
  }
}

source "amazon-ebs" "ubuntu" {
  # your code goes here
  # region, instance_type, ssh_username = "ubuntu"
  # ami_name = "packer-ticket4-${formatdate("YYYYMMDDhhmmss", timestamp())}"  (prefix packer-ticket4-)
  # source_ami_filter: most-recent Ubuntu 22.04, owner 099720109477 (do NOT hardcode an AMI id)
  # tags = local.task_tags

}

build {
  sources = ["source.amazon-ebs.ubuntu"]
  provisioner "file" {
    # your code goes here (source = "files/motd", destination = "/tmp/motd")
  }
  provisioner "shell" {
    # your code goes here (sudo mv /tmp/motd /etc/motd)
  }
}
