#!/usr/bin/env bash

# Source optional secrets.env if present
BIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="${APP_DATA_DIR:-${BIN_DIR}}"
DATA_DIR="${EXPORTS_APP_DATA_DIR:-${APP_DIR}/data}"

if [ -f "${DATA_DIR}/secrets.env" ]; then
  set -a
  . "${DATA_DIR}/secrets.env"
  set +a
elif [ -f "${APP_DIR}/data/secrets.env" ]; then
  set -a
  . "${APP_DIR}/data/secrets.env"
  set +a
fi
