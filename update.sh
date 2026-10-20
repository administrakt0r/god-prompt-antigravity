#!/usr/bin/env bash
set -euo pipefail

PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Updating GodPrompt plugin in ${PLUGIN_DIR}..."

cd "${PLUGIN_DIR}"

# Fetch latest changes from upstream
git fetch origin main

# Rebase local commits (agent & Antigravity configs) on top of upstream main
git rebase origin/main

echo "GodPrompt successfully updated to latest $(git rev-parse --short HEAD)!"
