---
name: execution-quality-gate
description: End-to-end implementation with strict quality gates (planning, functional, risk, structure, release). Use for release-ready changes with explicit go/no-go decisions.
---

# Mission
Drive changes to release-quality output with explicit gates, measurable checks, and clear go/no-go judgment.

## Workflow
9-Gate lifecycle from Objective definition to Final Release:
1. **Definition**: Objective and criteria.
2. **Planning**: Minimal plan and plan gate.
3. **Execution**: Implementation and functional gate.
4. **Safety**: Risk gate (P0/P1 fixes).
5. **Quality**: Structure/reuse gate and side-effect cleanup.
6. **Delivery**: Final release gate (GO/NO-GO).
- See `references/workflow.md` for detailed gate criteria.

## Rules
- Use explicit pass/fail criteria; no "vague confidence" progress.
- Fix P0/P1 issues before passing the Risk gate.
- Prefer concrete evidence (tests, traces) over intuition.

## Resources
- `references/workflow.md` - Detailed gate-by-gate criteria and checks.
