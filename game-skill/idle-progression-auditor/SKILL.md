---
    name: idle-progression-auditor
    description: Surface risk signals in idle progression by summarizing growth by segments and forcing retention rationale; write to .documents/game/IDLE_PROGRESSION_AUDIT.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Audit this idle progression curve for risk points."
- "Summarize growth by segments and identify drop-offs."

    ## Output format (.documents/game/IDLE_PROGRESSION_AUDIT.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/IDLE_PROGRESSION_AUDIT.md --title "Idle Progression Audit" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/IDLE_PROGRESSION_AUDIT.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
