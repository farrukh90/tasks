#!/bin/bash
# Your code goes here: create a non-root user (e.g. student), add to sudo,
# set an MOTD/login banner, disable SSH password authentication.
set -euxo pipefail

# Wait for first-boot cloud-init to finish before any apt/package work — otherwise
# apt-get races cloud-init's own boot-time apt and fails on the dpkg/apt lock.
sudo cloud-init status --wait
