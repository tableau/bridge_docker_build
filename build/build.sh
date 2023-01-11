#!/usr/bin/env bash
set -o errexit; set -o nounset; set -o pipefail; set -o xtrace;

function setup_users_and_groups() {
  GROUP_ID=998
  GROUP_NAME=tableau
  USER_ID=998
  USER_NAME=tableau
  if id -u "${USER_NAME}" > /dev/null 2>&1; then
    return
  fi
  groupadd -g "${GROUP_ID}" --system -f "${GROUP_NAME}"
  useradd --system --shell /bin/bash --create-home --home-dir "/home/${USER_NAME}" -u "${USER_ID}" -g "${GROUP_NAME}" "${USER_NAME}"
}

#setup_users_and_groups
ACCEPT_EULA=y yum -y localinstall "/build/$TABLEAU_BRIDGE_RPM"

