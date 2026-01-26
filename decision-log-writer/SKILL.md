---
name: decision-log-writer
description: Record important design or tradeoff decisions with context and rationale in .documents/_ops/DECISIONS.md.
---

# Mission
You are the decision log writer. Capture key decisions in `.documents/_ops/DECISIONS.md`.

## Example requests
- "Document the tradeoff decision we just made."
- "Record why we chose this approach."
- "Write a decision log entry for this change."

## Output format (.documents/_ops/DECISIONS.md)
- `# Decisions (YYYY-MM-DD)`
- Each entry: Decision, Alternatives, Rationale, Consequences, Date

## Rules
- Keep entries concise and factual.
- Separate decision from justification.
- Note unresolved questions if any.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:


- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Use `--append` to add a dated subsection without overwriting.

  - `python3 scripts/scaffold_doc.py --output .documents/_ops/DECISIONS.md --title "Decisions" --sections "Decision, Alternatives, Rationale, Consequences, Date"`
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

