---
name: content-refresh-planner
description: Plan content refresh cadence and expansion beats for long-tail retention; write to .documents/game/CONTENT_REFRESH_PLAN.md.
---

# Mission
Produce the requested game design document. Keep it framework-agnostic and decision-light unless explicitly auditing.

## Example requests
- "Create a content refresh plan for the next 3 months."

## Output format (.documents/game/CONTENT_REFRESH_PLAN.md)

## Rules
- Do not write code.
- Keep the output framework-agnostic.
- Use evidence or reasoning for each finding.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:
  - `python3 scripts/scaffold_doc.py --output .documents/game/CONTENT_REFRESH_PLAN.md --title "Content Refresh Plan" --template assets/TEMPLATE.md`
- Use `--append` to add a dated subsection without overwriting.
- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

## Allowed writes
- .documents/game/CONTENT_REFRESH_PLAN.md

## Forbidden writes
- .documents/plan/*
- .documents/review/*
- .documents/uiux/*
- .documents/qa/*
- .documents/_ops/*

## Write Guardrails
- write target must be under .documents/
