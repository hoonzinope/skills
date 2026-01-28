---
    name: core-loop-specifier
    description: Specify the core gameplay loop as action -> reward -> next choice, with breakpoints; write to .documents/game/CORE_LOOP.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Specify the core loop for this incremental game."
- "Identify where the loop breaks into waiting."

    ## Output format (.documents/game/CORE_LOOP.md)


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/CORE_LOOP.md --title "Core Loop" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/CORE_LOOP.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
