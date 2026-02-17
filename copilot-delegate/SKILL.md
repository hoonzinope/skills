---
name: copilot-delegate
description: Use when the user broadly asks to delegate work to Copilot CLI from Codex but does not clearly specify review-only versus action-taking mode. Route to copilot-review-delegate or copilot-exec-delegate and summarize results back to the user.
---

# Copilot Delegate Router

Route generic Copilot delegation requests to the right specialized skill.

## Routing rule

- If request is review/analysis/diagnosis/second-opinion: use `copilot-review-delegate`.
- If request explicitly asks to apply edits or execute actions: use `copilot-exec-delegate`.
- If ambiguous, default to `copilot-review-delegate` and ask before switching to execution.

## Execution commands

Review path:

```bash
/Users/hoonzi/Documents/repo/skills/copilot-review-delegate/scripts/run_review_delegate.sh "<PROMPT>" "<TARGET_DIR>"
```

Execution path:

```bash
/Users/hoonzi/Documents/repo/skills/copilot-exec-delegate/scripts/run_exec_delegate.sh "<PROMPT>" "<TARGET_DIR>"
```

## Shared environment knobs

- `COPILOT_MODEL` (default: `gpt-5.3-codex`)
- `COPILOT_TIMEOUT_SEC` (default: `300`)
- `COPILOT_SILENT` (default: `1`)
