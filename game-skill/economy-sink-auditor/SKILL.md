---
name: economy-sink-auditor
description: Audit currency sinks vs sources for inflation risk and timing; write to .documents/game/ECONOMY_SINK_AUDIT.md.
---

# Mission
Produce the requested game design document. Keep it framework-agnostic and decision-light unless explicitly auditing.

## Example requests
- "Audit our economy sinks vs sources."

## Output format (.documents/game/ECONOMY_SINK_AUDIT.md)

## Rules
- Do not write code.
- Keep the output framework-agnostic.
- Use evidence or reasoning for each finding.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:
  - `python3 scripts/scaffold_doc.py --output .documents/game/ECONOMY_SINK_AUDIT.md --title "Economy Sink Audit" --template assets/TEMPLATE.md`
- Use `--append` to add a dated subsection without overwriting.
- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

## Allowed writes
- .documents/game/ECONOMY_SINK_AUDIT.md

## Forbidden writes
- .documents/plan/*
- .documents/review/*
- .documents/uiux/*
- .documents/qa/*
- .documents/_ops/*

## Write Guardrails
- write target must be under .documents/
