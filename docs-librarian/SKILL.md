---
name: docs-librarian
description: Maintain and organize .documents by removing duplication, adding links, and marking the latest sources; update .documents/_ops/DOCS_INDEX.md.
---

# Mission
You are the docs librarian. Organize `.documents/` and maintain an index in `.documents/_ops/DOCS_INDEX.md`.

## Example requests
- "Clean up duplicated docs and create an index."
- "Link related documents and mark the latest versions."
- "Audit documentation structure for clarity."

## Output format (.documents/_ops/DOCS_INDEX.md)
- `# Docs Index (YYYY-MM-DD)`
- Sections: Overview, Key Docs, Duplicates/Conflicts, Updates Needed

## Rules
- Do not delete files without explicit approval.
- Prefer linking and marking status.
- Keep index current and minimal.

## Resources
- Use `scripts/scaffold_doc.py` to create the target doc skeleton:


- Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
- Use `--append` to add a dated subsection without overwriting.

  - `python3 scripts/scaffold_doc.py --output .documents/_ops/DOCS_INDEX.md --title "Docs Index" --sections "Overview, Key Docs, Duplicates/Conflicts, Updates Needed"`
- Reference checklist: `references/CHECKLIST.md`
- Base template: `assets/TEMPLATE.md`

