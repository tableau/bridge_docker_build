#!/bin/bash
set -e -x

export CLIENT=$HOSTNAME
export PATTOKENID=$HOSTNAME
export PATTOKENFILE="/etc/secret/pat"

/opt/tableau/tableau_bridge/bin/TabBridgeClientWorker -e \
    --client="${CLIENT}" \
    --site="${SITE}" \
    --userEmail="${USEREMAIL}" \
    --patTokenId="${PATTOKENID}" \
    --patTokenFile="${PATTOKENFILE}" \
    --poolId="${POOLID}"
