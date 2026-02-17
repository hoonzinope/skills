#!/usr/bin/env bash
set -euo pipefail

if ! command -v gemini >/dev/null 2>&1; then
  echo "[error] gemini command not found on host" >&2
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

MODEL="${GEMINI_MODEL:-gemini-3-flash-preview}"
TIMEOUT_SEC="${GEMINI_TIMEOUT_SEC:-300}"
OUTPUT_FORMAT="${GEMINI_OUTPUT_FORMAT:-text}"

if [[ "$OUTPUT_FORMAT" != "text" && "$OUTPUT_FORMAT" != "json" && "$OUTPUT_FORMAT" != "stream-json" ]]; then
  echo "[error] invalid GEMINI_OUTPUT_FORMAT: $OUTPUT_FORMAT" >&2
  exit 2
fi

if [[ "$MODE" == "review" ]]; then
  DEFAULT_APPROVAL_MODE="default"
  PROMPT_PREFIX="Read-only review mode. Do not edit files. Do not run commands that modify files or environment. Return findings, rationale, and suggested changes only."
else
  DEFAULT_APPROVAL_MODE="yolo"
  PROMPT_PREFIX="Execution mode. Apply the requested changes safely and report exactly what was changed."
fi

APPROVAL_MODE="${GEMINI_APPROVAL_MODE:-$DEFAULT_APPROVAL_MODE}"
if [[ "$APPROVAL_MODE" != "auto_edit" && "$APPROVAL_MODE" != "yolo" && "$APPROVAL_MODE" != "default" ]]; then
  echo "[error] invalid GEMINI_APPROVAL_MODE: $APPROVAL_MODE" >&2
  exit 2
fi

FULL_PROMPT="$PROMPT_PREFIX

$PROMPT"

CMD=(
  gemini
  -p "$FULL_PROMPT"
  --model "$MODEL"
  --approval-mode "$APPROVAL_MODE"
  --output-format "$OUTPUT_FORMAT"
  --include-directories "$TARGET_DIR"
)

if command -v timeout >/dev/null 2>&1; then
  exec timeout "$TIMEOUT_SEC" "${CMD[@]}"
elif command -v gtimeout >/dev/null 2>&1; then
  exec gtimeout "$TIMEOUT_SEC" "${CMD[@]}"
else
  echo "[warn] timeout/gtimeout not found; running without timeout" >&2
  exec "${CMD[@]}"
fi
