---
name: gemini-exec-delegate
description: Use when the user explicitly asks Codex to delegate implementation or command-executing work to Gemini CLI in headless mode. Uses action-oriented prompting, timeout control, and directory scoping.
---

# Gemini Exec Delegate

Delegate action/execution tasks from Codex to host Gemini CLI.

## When to use

- User explicitly wants Gemini to apply changes or run execution workflows.
- Delegated implementation is preferred over Codex-local execution.

## Run

```bash
/Users/hoonzi/Documents/repo/skills/gemini-exec-delegate/scripts/run_exec_delegate.sh "<PROMPT>" "<TARGET_DIR>"
```

## Defaults

- Approval mode: `yolo` (override via `GEMINI_APPROVAL_MODE`)
- Model: `gemini-3-flash-preview` (override via `GEMINI_MODEL`)
- Timeout: `300` seconds (override via `GEMINI_TIMEOUT_SEC`)

## Output contract

Return a concise summary:
- What was changed/executed
- Validation results
- Risks and follow-up actions
