#!/bin/bash


# LOCATE PROJECT ROOT

KVM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "src/logger.sh"
source "$KVM_DIR/apps/_installer.sh"

[ -f "$KVM_DIR/conf.sh" ] && source "$KVM_DIR/conf.sh"


# HELPERS

log_header () {
  info "development" "---- Starting <<DEVELOPMENT>> provisioning... ----"
}

log_footer () {
  info "development" "---- ...<<DEVELOPMENT>> provisioning complete. ----"
}


# INTERFACE

provision () {
  kvm_is_provisioned
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

