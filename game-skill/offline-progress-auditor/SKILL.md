---
    name: offline-progress-auditor
    description: Audit offline progress rules (caps, display, time tampering, simulation method) and document policy; write to .documents/game/OFFLINE_PROGRESS_RULES.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Audit our offline progress rules."
- "Define cap and time-tampering handling."

    ## Output format (.documents/game/OFFLINE_PROGRESS_RULES.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/OFFLINE_PROGRESS_RULES.md --title "Offline Progress Rules" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/OFFLINE_PROGRESS_RULES.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
