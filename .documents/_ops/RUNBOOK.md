# Runbook (Light PM)

## Default
- Prefer the minimal workflow.
- Recommend at most 3 skills per run.

## Levels
### S (small change / quick fix)
- code-reviewer <-> code-fixer
- optional: bug-triager

### M (feature change)
- planner -> plan-reviewer -> spec-writer (if requirements unclear)
- qa-engineer -> risk-based-tester (if behavior changes)
- code-reviewer <-> code-fixer

### L (release / risky)
- M plus:
- security-reviewer (auth/permissions/payment/upload/external api)
- dependency-auditor (deps added/updated)
- performance-profiler (hot path / perf issue / latency)
- release-noter (shipping)

## Triggers
- auth/permission/token/secret/payment/upload -> security-reviewer
- new deps / version bump -> dependency-auditor
- perf issue / critical path changed -> performance-profiler
- shipping / migration / public release -> release-noter
