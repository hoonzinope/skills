---
    name: player-friction-reviewer
    description: Review player friction sources (tutorial overload, hidden rules, UI blocking strategy) and log issues; write to .documents/game/PLAYER_FRICTION_REVIEW.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Review player friction in this onboarding flow."
- "Find tutorial overload or hidden rules."

    ## Output format (.documents/game/PLAYER_FRICTION_REVIEW.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/PLAYER_FRICTION_REVIEW.md --title "Player Friction Review" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/PLAYER_FRICTION_REVIEW.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
