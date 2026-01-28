---
    name: game-design-explorer
    description: Explore a game concept with a beginner-friendly lens and map the design space without making final decisions; write to .documents/game/GAME_DESIGN_OVERVIEW.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Explore the design space for a casual strategy game."
- "Map possible genres and session lengths for this concept."
- "I am new to game design; help me understand the terrain."

    ## Output format (.documents/game/GAME_DESIGN_OVERVIEW.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/GAME_DESIGN_OVERVIEW.md --title "Game Design Overview" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/GAME_DESIGN_OVERVIEW.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
