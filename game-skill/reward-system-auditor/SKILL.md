---
    name: reward-system-auditor
    description: Audit reward structures for risks (immediate vs delayed rewards, intrinsic/extrinsic balance, inflation, distorted loops) and log findings; write to .documents/game/REWARD_SYSTEM_AUDIT.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Audit this reward system for risks."
- "Check if rewards are inflating too quickly."
- "Are rewards distorting player behavior?"

    ## Output format (.documents/game/REWARD_SYSTEM_AUDIT.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/REWARD_SYSTEM_AUDIT.md --title "Reward System Audit" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/REWARD_SYSTEM_AUDIT.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
