#!/bin/bash

# Get current directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "src/packages/apt/packages.sh"
source "src/users.sh"
source "src/services.sh"

kvm_is_provisioned () {
  ensure_kvm_is_installed
  ensure_user_is_in_groups "$USER" libvirt kvm
  ensure_service_is_active libvirtd
}

ensure_kvm_is_installed () {
  apt_ensure_packages_are_installed \
    qemu-kvm \
    libvirt-daemon-system \
    libvirt-clients \
    bridge-utils \
    virt-manager
}
