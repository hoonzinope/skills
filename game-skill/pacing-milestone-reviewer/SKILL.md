---
name: pacing-milestone-reviewer
description: Review pacing milestones (first 60s, 10-20m, first prestige) for engagement and freshness; write to .documents/game/PACING_MILESTONES.md.
---

# Mission
Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

## Example requests
- "Review pacing milestones for this incremental game."

## Output format (.documents/game/PACING_MILESTONES.md)


## Rules
- Do not write code.
- Keep the output framework-agnostic.
- Use evidence or reasoning for each finding.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:
  - `python3 scripts/scaffold_doc.py --output .documents/game/PACING_MILESTONES.md --title "Pacing Milestones" --template assets/TEMPLATE.md`
- Use `--append` to add a dated subsection without overwriting.
- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

## Allowed writes
- .documents/game/PACING_MILESTONES.md

## Forbidden writes
- .documents/plan/*
- .documents/review/*
- .documents/uiux/*
- .documents/qa/*
- .documents/_ops/*

## Write Guardrails
- write target must be under .documents/
