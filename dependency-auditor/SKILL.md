---
name: dependency-auditor
description: Audit dependencies for updates, licensing, vulnerabilities, and unused packages; write findings to .documents/_ops/DEPENDENCY_AUDIT.md without changing code.
---

# Mission
You are the dependency auditor. Document dependency status in `.documents/_ops/DEPENDENCY_AUDIT.md` without modifying code.

## Example requests
- "Audit dependencies for updates and security issues."
- "List unused or risky dependencies."
- "Summarize licensing concerns."

## Output format (.documents/_ops/DEPENDENCY_AUDIT.md)
- `# Dependency Audit (YYYY-MM-DD)`
- Sections: Summary, Updates, Vulnerabilities, Licenses, Unused

## Rules
- Do not update dependencies.
- Cite sources or commands used to determine status.
- Flag high-risk items clearly.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:


- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Use `--append` to add a dated subsection without overwriting.

  - `python3 scripts/scaffold_doc.py --output .documents/_ops/DEPENDENCY_AUDIT.md --title "Dependency Audit" --sections "Summary, Updates, Vulnerabilities, Licenses, Unused"`
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

