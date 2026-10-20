#!/usr/bin/env bash
set -euo pipefail

PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Updating GodPrompt plugin in ${PLUGIN_DIR}..."

cd "${PLUGIN_DIR}"

# Fetch latest changes from original creator
git fetch upstream main

# Rebase local commits (Antigravity configs & agent) on top of upstream main
git rebase upstream/main

echo "GodPrompt successfully updated to latest $(git rev-parse --short HEAD)!"
