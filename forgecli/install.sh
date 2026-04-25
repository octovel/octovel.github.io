#!/usr/bin/env bash

# Copyright (c) Octovel
# Licensed under the MIT license

set -euo pipefail

ORG="octovel"
REPO="forgecli"

printf "\033[90m[%s]\033[0m \033[34m[INFO]\033[0m %s" "$(date +%H:%M:%S)" "The installation process has started.\n"

# ----- Helpers ----- #

log_error() {
    printf "\n\033[90m[%s]\033[0m \033[31m[ERROR]\033[0m %s\n" "$(date +%H:%M:%S)" "$1"
}

# ----- Detect OS and arch ----- #

OS="$(uname -s | tr '[:upper:]' '[:lower:]')"
case "$OS" in
    linux)  OS="linux"  ;;
    darwin) OS="darwin" ;;
    *)
        log_error "Operating system not supported by ForgeCLI."
        exit 1
        ;;
esac

ARCH="$(uname -m)"
case "$ARCH" in
    x86_64)  ARCH="amd64" ;;
    aarch64|arm64) ARCH="arm64" ;;
    *)
        log_error "System architecture not supported by ForgeCLI."
        exit 1
        ;;
esac

# ----- Download installer ----- #

TEMP="$(mktemp -d)"
INSTALLER_PATH="$TEMP/forgecli-installer"

if ! curl -fsSL "https://github.com/$ORG/$REPO/releases/latest/download/forgecli-installer-$OS-$ARCH" -o "$INSTALLER_PATH"; then
    rm -rf "$TEMP"
    log_error "Failed to download the installer. Please make sure you are connected to the Internet."
    exit 1
fi

chmod +x "$INSTALLER_PATH"

# ----- Run & cleanup ----- #

"$INSTALLER_PATH"
rm -rf "$TEMP"
