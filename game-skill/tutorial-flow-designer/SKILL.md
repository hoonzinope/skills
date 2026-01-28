---
    name: tutorial-flow-designer
    description: Design a beginner-friendly tutorial flow (first 1-3 minutes) with staged reveals and minimal overload; write to .documents/game/TUTORIAL_FLOW.md.
    ---

    # Mission
    Produce the requested game design document. Keep it framework-agnostic and decision-light unless explicitly auditing.

    ## Example requests
    - "Design a tutorial flow for this idle game."
- "Outline the first 3 minutes of onboarding."

    ## Output format (.documents/game/TUTORIAL_FLOW.md)

    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/TUTORIAL_FLOW.md --title "Tutorial Flow" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/TUTORIAL_FLOW.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
