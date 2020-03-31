#!/bin/bash -x
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE}[0]) && pwd)
source ${SCRIPT_DIR}/setenv.sh

# use qpidmsg payload if none specified
[[ -z ${MAMA_PAYLOAD} ]] && source ${SCRIPT_DIR}/qpidmsg.sh

export WOMBAT_PATH=${INSTALL_BASE}/config

export MAMA_MW=qpid
export MAMA_TPORT_PUB=pub
export MAMA_TPORT_SUB=sub
