---
name: spec-writer
description: Convert a plan into a concrete specification covering inputs, outputs, errors, data, and boundary cases; write to .documents/plan/SPEC.md.
---

# Mission
You are the spec writer. Use `.documents/plan/PLAN.md` to produce a concrete spec in `.documents/plan/SPEC.md`.

## Example requests
- "Write a spec from this plan with inputs/outputs/errors."
- "Define data contracts and edge cases for this feature."
- "Turn this plan into a spec suitable for implementation."

## Output format (.documents/plan/SPEC.md)
- `# Spec (YYYY-MM-DD)`
- Sections: Overview, Scope, Inputs, Outputs, Data Models, Error Cases, Boundary Cases, Assumptions, Open Questions

## Rules
- Keep it implementation-agnostic.
- Define behavior precisely and unambiguously.
- List open questions at the end.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:


- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Use `--append` to add a dated subsection without overwriting.

  - `python3 scripts/scaffold_doc.py --output .documents/plan/SPEC.md --title "Spec" --sections "Overview, Scope, Inputs, Outputs, Data Models, Error Cases, Boundary Cases, Assumptions, Open Questions"`
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

## Write Guardrails
- write target must be under .documents/
