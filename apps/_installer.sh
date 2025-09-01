
# Get current directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "src/packages/apt.sh"
source "src/users.sh"
source "src/services.sh"

ensure_kvm_is_installed () {
  apt_ensure_packages_are_installed \
    qemu-kvm \
    libvirt-daemon-system \
    libvirt-clients \
    bridge-utils \
    virt-manager
}

kvm_is_provisioned () {
  ensure_kvm_is_installed
  user_is_in_groups pat libvirt kvm
  service_is_active libvirtd
}
