---
name: copilot-exec-delegate
description: Use when the user explicitly asks Codex to delegate implementation or command-executing work to Copilot CLI in headless mode. Uses action-oriented prompting and timeout control.
---

# Copilot Exec Delegate

Delegate action/execution tasks from Codex to host Copilot CLI.

## Run

```bash
/Users/hoonzi/Documents/repo/skills/copilot-exec-delegate/scripts/run_exec_delegate.sh "<PROMPT>" "<TARGET_DIR>"
```

## Defaults

- Model: `gpt-5.3-codex` (override via `COPILOT_MODEL`)
- Timeout: `300` seconds (override via `COPILOT_TIMEOUT_SEC`)
- Silent mode: `on` (override via `COPILOT_SILENT=0`)

## Notes

- Execution mode enables auto-permissions (`--allow-all-tools --allow-all-paths --allow-all-urls`).
- Use only when user explicitly asked for action-taking delegation.
