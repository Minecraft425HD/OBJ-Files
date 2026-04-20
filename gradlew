#!/usr/bin/env bash
set -euo pipefail

if ! command -v gradle >/dev/null 2>&1; then
  echo "Error: gradle ist nicht installiert. Bitte Gradle 8.x installieren." >&2
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/forge-test-1.20.1"
exec gradle "$@"
