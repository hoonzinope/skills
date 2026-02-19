## Workflow
1) Define objective and acceptance criteria
- Restate objective in one paragraph.
- List functional and non-functional acceptance criteria.
- If criteria are missing, infer conservative defaults and state assumptions.

2) Build a minimal plan
- Create a short implementation plan with affected files, tests, and risks.
- Prefer the smallest viable approach that satisfies criteria.

3) Plan gate review
- Verify plan correctness against objective.
- Verify scope is not excessive (avoid overengineering).
- Verify dependencies, migration needs, and rollback considerations.
- If plan fails, revise and rerun this gate.

4) Implement
- Apply changes in small, reviewable steps.
- Keep behavior aligned with acceptance criteria.

5) Functional gate review
- Validate implemented behavior against objective and user flow.
- Run relevant tests/checks.
- If missing tests are high risk, add targeted tests.

6) Risk gate review
- Check potential bugs, critical failures, and security issues.
- Classify findings by severity (`P0`/`P1`/`P2`/`P3`).
- Fix `P0` and `P1` before proceeding.

7) Structure and reuse gate
- Split oversized functions/files into maintainable units.
- Check for reusable existing components before adding new abstractions.
- Ensure integration style matches surrounding code.

8) Side-effect and cleanup gate
- Check regressions and unintended side effects.
- Remove obsolete code, stale flags, and dead paths introduced by the change.
- Re-verify touched paths after cleanup.

9) Final release gate
- Re-review entire diff for correctness, quality, and maintainability.
- Confirm user-facing flow works end-to-end.
- Return final recommendation:
  - `GO`: no blocking issues remain.
  - `NO-GO`: blocking issues or unacceptable residual risk remain.

## Rules
