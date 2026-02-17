#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 \"<prompt>\" [target_dir]" >&2
  exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SHARED_RUNNER="$SCRIPT_DIR/../../.shared/gemini-delegate/scripts/run_gemini_headless.sh"

if [[ ! -x "$SHARED_RUNNER" ]]; then
  echo "[error] shared runner not found: $SHARED_RUNNER" >&2
  exit 2
fi

exec "$SHARED_RUNNER" execute "$1" "${2:-$PWD}"
