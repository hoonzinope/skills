#!/usr/bin/env bash
set -euo pipefail

if ! command -v copilot >/dev/null 2>&1; then
  echo "[error] copilot command not found on host" >&2
  exit 127
fi

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <review|execute> \"<prompt>\" [target_dir]" >&2
  exit 2
fi

MODE="$1"
PROMPT="$2"
TARGET_DIR="${3:-$PWD}"

if [[ "$MODE" != "review" && "$MODE" != "execute" ]]; then
  echo "[error] invalid mode: $MODE (expected: review|execute)" >&2
  exit 2
fi

if [[ ! -d "$TARGET_DIR" ]]; then
  echo "[error] target directory not found: $TARGET_DIR" >&2
  exit 2
fi

MODEL="${COPILOT_MODEL:-gpt-5.3-codex}"
TIMEOUT_SEC="${COPILOT_TIMEOUT_SEC:-300}"
SILENT="${COPILOT_SILENT:-1}"

COMMON=(
  copilot
  -p "$PROMPT"
  --model "$MODEL"
  --add-dir "$TARGET_DIR"
  --no-ask-user
)

if [[ "$SILENT" == "1" ]]; then
  COMMON+=(--silent)
fi

if [[ "$MODE" == "review" ]]; then
  # Read-only bias for headless review mode.
  # `deny-tool` takes precedence over broad allows.
  COMMON+=(
    --allow-all-tools
    --deny-tool write
    --deny-tool edit
    --deny-tool "shell(*)"
  )
else
  # Execution mode with explicit auto-approval.
  COMMON+=(
    --allow-all-tools
    --allow-all-paths
    --allow-all-urls
  )
fi

if command -v timeout >/dev/null 2>&1; then
  exec timeout "$TIMEOUT_SEC" "${COMMON[@]}"
elif command -v gtimeout >/dev/null 2>&1; then
  exec gtimeout "$TIMEOUT_SEC" "${COMMON[@]}"
else
  echo "[warn] timeout/gtimeout not found; running without timeout" >&2
  exec "${COMMON[@]}"
fi
