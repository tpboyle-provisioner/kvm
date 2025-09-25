#!/bin/bash


# LOCATE PROJECT ROOT

KVM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "src/logger.sh"
source "$KVM_DIR/apps/_all.sh"


# HELPERS

log_header () {
  info "development" "---- Starting _kvm_ provisioning... ----"
}

log_footer () {
  info "development" "---- ..._kvm_ provisioning complete. ----"
}


# INTERFACE

provision () {
  provision_all_kvm_apps
}


# MAIN

main () {
  log_header
  provision
  log_footer
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi

