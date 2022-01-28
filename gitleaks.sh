#!/usr/bin/env bash

SCRIPT_DIR=`dirname "$BASH_SOURCE"`

ARCH_NAME="$(uname -m)"
 
if [ "${ARCH_NAME}" = "x86_64" ]; then
    # if [ "$(sysctl -in sysctl.proc_translated)" = "1" ]; then
    #     echo "Running on Rosetta 2"
    # else
    #     echo "Running on native Intel"
    # fi 
    (cd ${PWD} && ${SCRIPT_DIR}/gitleaks protect --verbose --redact --staged $*)
elif [ "${ARCH_NAME}" = "arm64" ]; then
    (cd ${PWD} && ${SCRIPT_DIR}/gitleaks-arm64 protect --verbose --redact --staged $*)
else
    echo "Unknown architecture: ${ARCH_NAME}"
    exit 1
fi