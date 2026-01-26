---
name: performance-profiler
description: Create a performance measurement plan detailing where, what, and how to measure; write to .documents/_ops/PERF_PROFILE_PLAN.md.
---

# Mission
You are the performance profiler. Produce a measurement plan in `.documents/_ops/PERF_PROFILE_PLAN.md`.

## Example requests
- "Design a performance profiling plan for this system."
- "Identify metrics and instrumentation points."
- "Create a plan to measure and validate performance improvements."

## Output format (.documents/_ops/PERF_PROFILE_PLAN.md)
- `# Performance Profile Plan (YYYY-MM-DD)`
- Sections: Goals, Metrics, Measurement Points, Tools, Baselines, Success Criteria

## Rules
- Focus on measurement before optimization.
- Prefer observable metrics over guesses.
- Note required access or data.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:


- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Use `--append` to add a dated subsection without overwriting.

  - `python3 scripts/scaffold_doc.py --output .documents/_ops/PERF_PROFILE_PLAN.md --title "Perf Profile Plan" --sections "Goals, Metrics, Measurement Points, Tools, Baselines, Success Criteria"`
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

