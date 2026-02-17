#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 \"<prompt>\" [target_dir]" >&2
  exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REVIEW_RUNNER="$SCRIPT_DIR/../../copilot-review-delegate/scripts/run_review_delegate.sh"

if [[ ! -x "$REVIEW_RUNNER" ]]; then
  echo "[error] review runner not found: $REVIEW_RUNNER" >&2
  exit 2
fi

# Backward-compatible default: review path.
exec "$REVIEW_RUNNER" "$1" "${2:-$PWD}"
