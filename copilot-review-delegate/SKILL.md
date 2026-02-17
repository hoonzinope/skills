---
name: copilot-review-delegate
description: Use when the user asks Codex to delegate read-only analysis, review, or second-opinion tasks to Copilot CLI in headless mode. Enforces review-oriented prompting, tool-deny guardrails, and timeout control.
---

# Copilot Review Delegate

Delegate read-only analysis tasks from Codex to host Copilot CLI.

## Run

```bash
/Users/hoonzi/Documents/repo/skills/copilot-review-delegate/scripts/run_review_delegate.sh "<PROMPT>" "<TARGET_DIR>"
```

## Defaults

- Model: `gpt-5.3-codex` (override via `COPILOT_MODEL`)
- Timeout: `300` seconds (override via `COPILOT_TIMEOUT_SEC`)
- Silent mode: `on` (override via `COPILOT_SILENT=0`)

## Notes

- Headless review mode adds deny rules for `write`, `edit`, and `shell(*)`.
- Keep prompts explicit about non-modifying behavior.
