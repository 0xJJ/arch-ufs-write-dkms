#!/bin/bash

CONFIG_FILE="/lib/modules/${kernelver}/build/.config"

if ! grep -q '^CONFIG_UFS_FS=m' "$CONFIG_FILE"; then
  echo "Error: The kernel was not built with UFS as a module."
  exit 1
fi

if ! grep -q '^# CONFIG_UFS_FS_WRITE is not set' "$CONFIG_FILE"; then
  echo "Error: The kernel already has UFS write support."
  exit 1
fi
