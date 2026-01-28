---
    name: level-design-reviewer
    description: Review a level design for principle-based issues (difficulty spikes, learning flow, retry cost) and explain why problems occur; write to .documents/game/LEVEL_DESIGN_REVIEW.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Review this level design doc for potential issues."
- "Is there a difficulty spike in this level flow?"
- "Explain why this level might frustrate players."

    ## Output format (.documents/game/LEVEL_DESIGN_REVIEW.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/LEVEL_DESIGN_REVIEW.md --title "Level Design Review" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/LEVEL_DESIGN_REVIEW.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
