#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 \"<prompt>\" [target_dir]" >&2
  exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RUNNER="$SCRIPT_DIR/../../.shared/copilot-delegate/scripts/run_copilot_headless.sh"

if [[ ! -x "$RUNNER" ]]; then
  echo "[error] shared runner not found: $RUNNER" >&2
  exit 2
fi

PROMPT_PREFIX="Execution mode. Apply requested changes carefully and summarize exactly what was changed, how validated, and any residual risks."
FULL_PROMPT="$PROMPT_PREFIX

$1"

exec "$RUNNER" execute "$FULL_PROMPT" "${2:-$PWD}"
