# packer/ticket10 — Golden lab image (capstone). Combine everything you learned.
# Full instructions are in the Check Tasks panel.

packer {
  required_plugins {
    # your code goes here (the amazon plugin)
  }
}

source "amazon-ebs" "lab" {
  # your code goes here
  # variables/locals, encrypted root volume (encrypt_boot + launch_block_device_mappings),
  # ami_name prefix "packer-ticket10-", tags = local.task_tags + Role = "lab-golden"
}

build {
  sources = ["source.amazon-ebs.lab"]

  # your code goes here:
  #  - file provisioner: files/motd -> /etc/motd
  #  - shell provisioner: scripts/install-toolchain.sh (Terraform, AWS CLI, Ansible)
  #  - shell provisioner: create user + hardening
  #  - post-processor "manifest" { output = "manifest.json" }
}
