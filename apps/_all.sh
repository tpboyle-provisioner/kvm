#!/bin/bash

KVM_APPS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$KVM_APPS_DIR/kvm.sh"

provision_all_kvm_apps () {
  kvm_is_provisioned
}
