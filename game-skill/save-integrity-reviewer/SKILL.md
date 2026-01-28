---
name: save-integrity-reviewer
description: Review save/load integrity, recovery, and tamper policies; write to .documents/game/SAVE_INTEGRITY_REVIEW.md.
---

# Mission
Produce the requested game design document. Keep it framework-agnostic and decision-light unless explicitly auditing.

## Example requests
- "Review save integrity and recovery plan."

## Output format (.documents/game/SAVE_INTEGRITY_REVIEW.md)

## Rules
- Do not write code.
- Keep the output framework-agnostic.
- Use evidence or reasoning for each finding.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:
  - `python3 scripts/scaffold_doc.py --output .documents/game/SAVE_INTEGRITY_REVIEW.md --title "Save Integrity Review" --template assets/TEMPLATE.md`
- Use `--append` to add a dated subsection without overwriting.
- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

## Allowed writes
- .documents/game/SAVE_INTEGRITY_REVIEW.md

## Forbidden writes
- .documents/plan/*
- .documents/review/*
- .documents/uiux/*
- .documents/qa/*
- .documents/_ops/*

## Write Guardrails
- write target must be under .documents/
