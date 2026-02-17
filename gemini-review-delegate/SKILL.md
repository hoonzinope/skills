---
name: gemini-review-delegate
description: Use when the user asks Codex to delegate read-only analysis, review, or second-opinion tasks to Gemini CLI in headless mode. Enforces review-oriented prompting and timeout control, scoped to a target directory.
---

# Gemini Review Delegate

Delegate read-only analysis tasks from Codex to host Gemini CLI.

## When to use

- User asks for review, analysis, diagnosis, or second opinion.
- User does not want Gemini to apply edits directly.

## Run

```bash
/Users/hoonzi/Documents/repo/skills/gemini-review-delegate/scripts/run_review_delegate.sh "<PROMPT>" "<TARGET_DIR>"
```

## Defaults

- Approval mode: `default` (override via `GEMINI_APPROVAL_MODE`)
- Model: `gemini-3-flash-preview` (override via `GEMINI_MODEL`)
- Timeout: `300` seconds (override via `GEMINI_TIMEOUT_SEC`)

## Output contract

Return a concise summary:
- Key findings
- Evidence and rationale
- Recommended next actions
