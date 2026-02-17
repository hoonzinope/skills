---
name: gemini-delegate
description: Use when the user broadly asks to delegate work to Gemini CLI from Codex but does not clearly specify review-only versus action-taking mode. Route to gemini-review-delegate or gemini-exec-delegate and summarize results back to the user.
---

# Gemini Delegate Router

Route generic Gemini delegation requests to the right specialized skill.

## Routing rule

- If request is review/analysis/diagnosis/second-opinion: use `gemini-review-delegate`.
- If request explicitly asks to apply edits or execute actions: use `gemini-exec-delegate`.
- If ambiguous, default to `gemini-review-delegate` and ask before switching to execution.

## Execution commands

Review path:

```bash
/Users/hoonzi/Documents/repo/skills/gemini-review-delegate/scripts/run_review_delegate.sh "<PROMPT>" "<TARGET_DIR>"
```

Execution path:

```bash
/Users/hoonzi/Documents/repo/skills/gemini-exec-delegate/scripts/run_exec_delegate.sh "<PROMPT>" "<TARGET_DIR>"
```

## Shared environment knobs

- `GEMINI_MODEL` (default: `gemini-3-flash-preview`)
- `GEMINI_TIMEOUT_SEC` (default: `300`)
- `GEMINI_APPROVAL_MODE` (optional override)
- `GEMINI_OUTPUT_FORMAT` (default: `text`, options: `text|json|stream-json`)
