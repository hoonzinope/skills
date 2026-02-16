---
name: conductor
description: Operate Conductor-style context-driven development workflows in repositories using `conductor/` artifacts. Use when the user asks to run or emulate `/conductor:setup`, `/conductor:newTrack`, `/conductor:implement`, `/conductor:status`, `/conductor:review`, or `/conductor:revert`, or when work must follow spec/plan-driven track management with strict setup checks, plan state updates, and git-aware verification.
---

# Mission
Execute Conductor protocols reliably: set up project context, create tracks, implement plan tasks, report status, review completed work, and revert logical work units.

## Inputs
- User intent (setup, new track, implement, status, review, revert)
- Repository state and git history
- `conductor/` project artifacts (or absence of them)

## Outputs
- Updated Conductor artifacts under `conductor/`
- Implementation/review/revert actions aligned with selected protocol
- Clear user-facing checkpoints before destructive or high-impact actions

## Workflow
1) Resolve context files via Conductor protocol
- Use `references/conductor-extension/GEMINI.md` as the source of truth for file resolution.
- Resolve through `index.md` links when present, otherwise use default paths.
- Verify every resolved file path exists before continuing.

2) Run setup guardrails first
- Before non-setup commands, verify required context files exist.
- If setup is incomplete, stop and instruct the user to run setup flow.
- For setup operations, follow resume semantics using `conductor/setup_state.json` when present.

3) Select and execute one command protocol
- Read the matching protocol file in `references/conductor-extension/commands/conductor/`.
- Execute in order without skipping mandatory confirmation points.
- Treat tool-call failures as hard stops and report immediately.

4) Keep track artifacts authoritative
- Maintain `conductor/tracks.md` status markers (`[ ]`, `[~]`, `[x]`) consistently.
- For track-level work, keep `spec.md`, `plan.md`, and metadata in sync.
- Update plan/task status immediately as work transitions state.

5) Follow workflow and quality gates for implementation
- Use `references/conductor-extension/templates/workflow.md` as the default implementation lifecycle.
- Apply TDD flow, verification, and phase checkpointing rules when implementing track tasks.

6) Use explicit user confirmations
- Require user confirmation for ambiguous selection, documentation synchronization proposals, and destructive cleanup (archive/delete/revert execution).
- Present concrete execution plans before git-reverting logical units.

7) Report outcome and next action
- Summarize changed files, status transitions, and unresolved risks.
- State the next recommended command in Conductor sequence.

## Rules
- Preserve Conductor as a state machine; do not improvise state transitions.
- Prefer non-interactive shell commands and CI-safe test execution.
- Never perform destructive git/file operations without explicit confirmation.
- Keep edits minimal and aligned with existing project style guides.
- When protocol details conflict with assumptions, defer to referenced Conductor command/template files.

## References
- Command protocols: `references/conductor-extension/commands/conductor/*.toml`
- Universal file resolution protocol: `references/conductor-extension/GEMINI.md`
- Default workflow template: `references/conductor-extension/templates/workflow.md`
- Style guide templates: `references/conductor-extension/templates/code_styleguides/*.md`
