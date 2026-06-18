#!/bin/bash
# Your code goes here: install Terraform, AWS CLI v2, and Ansible (pin versions).
set -euxo pipefail

# Wait for first-boot cloud-init to finish before touching apt — otherwise apt-get
# races cloud-init's own boot-time apt and fails on the dpkg/apt lock.
sudo cloud-init status --wait
