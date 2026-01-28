---
    name: prestige-loop-auditor
    description: Design and audit prestige loop parameters (time to first reset, acceleration, soft caps) and document decisions; write to .documents/game/PRESTIGE_SYSTEM_DESIGN.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Audit our prestige loop for timing and acceleration."
- "Design a prestige system with a 60-minute first reset."

    ## Output format (.documents/game/PRESTIGE_SYSTEM_DESIGN.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/PRESTIGE_SYSTEM_DESIGN.md --title "Prestige System Design" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/PRESTIGE_SYSTEM_DESIGN.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
