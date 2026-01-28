---
    name: match3-difficulty-reviewer
    description: Decompose match-3 level difficulty by cognitive load and early choice density; explain failure clarity; write to .documents/game/MATCH3_DIFFICULTY_REVIEW.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Review this match-3 level for difficulty drivers."
- "Explain why this match-3 level feels unfair."

    ## Output format (.documents/game/MATCH3_DIFFICULTY_REVIEW.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/MATCH3_DIFFICULTY_REVIEW.md --title "Match3 Difficulty Review" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/MATCH3_DIFFICULTY_REVIEW.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
