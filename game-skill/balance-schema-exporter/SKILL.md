---
    name: balance-schema-exporter
    description: Export balancing data into a JSON schema and a developer-facing spec; write to .documents/game/BALANCE_SCHEMA.json and .documents/game/TECHNICAL_SPEC_FOR_DEV.md.
    ---

    # Mission
    Produce the requested game design document. Stay decision-light unless the skill explicitly audits or specifies.

    ## Example requests
    - "Export this balance sheet into JSON + dev spec."
- "Create a schema for upgrades and progression."

    ## Outputs
- .documents/game/BALANCE_SCHEMA.json
- .documents/game/TECHNICAL_SPEC_FOR_DEV.md


    ## Rules
    - Do not write code.
    - Keep the output framework-agnostic.
    - Use evidence or reasoning for each finding.

    ## Resources
    - Use `scripts/scaffold_doc.py` to create the target doc skeleton:
      - `python3 scripts/scaffold_doc.py --output .documents/game/BALANCE_SCHEMA.json --title "Balance Schema.Json" --template assets/TEMPLATE.md`
    - Use `--append` to add a dated subsection without overwriting.
    - Use `--template assets/TEMPLATE.md` to scaffold from the skill-specific template.
    - Reference checklist: `references/CHECKLIST.md`
    - Base template: `assets/TEMPLATE.md`

    ## Allowed writes
    - .documents/game/BALANCE_SCHEMA.json
- .documents/game/TECHNICAL_SPEC_FOR_DEV.md

    ## Forbidden writes
    - .documents/plan/*
    - .documents/review/*
    - .documents/uiux/*
    - .documents/qa/*
    - .documents/_ops/*

    ## Write Guardrails
    - write target must be under .documents/
