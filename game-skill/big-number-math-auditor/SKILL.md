---
    name: big-number-math-auditor
    description: Audit large-number math systems for stability, notation, storage, and ordering; produce a math system guide and stability report; write to .documents/game/MATH_SYSTEM.md and .documents/game/MATH_STABILITY_REPORT.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Review our large-number system for precision risks."
- "Decide notation and storage rules for idle numbers."

    ## Outputs
- .documents/game/MATH_SYSTEM.md
- .documents/game/MATH_STABILITY_REPORT.md


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
  - `python3 scripts/scaffold_doc.py --output .documents/game/MATH_SYSTEM.md --title "Math System" --template assets/TEMPLATE.md`
  - `python3 scripts/scaffold_doc.py --output .documents/game/MATH_STABILITY_REPORT.md --title "Math Stability Report" --template assets/MATH_STABILITY_REPORT.md`
      - `python3 scripts/scaffold_doc.py --output .documents/game/MATH_SYSTEM.md --title "Math System" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/MATH_SYSTEM.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
