---
name: ui-ux-intelligence
description: Integrated UI/UX skill combining data-driven design intelligence (styles, colors, typography, UX datasets) with structured documentation (user flows, IA, screen specs, audits). Use for end-to-end UI/UX design, implementation guidance, and documenting design decisions in .documents/uiux/.
---

# Mission
Generate high-quality UI/UX intelligence, implementation direction, and structured design documentation.

## Responsibilities

### 1. Design Intelligence (Intelligence-First)
- **Design System**: Generate recommendations for patterns, styles, colors, and typography using `scripts/search.py --design-system`.
- **Domain Search**: Query specialized datasets for products, styles, charts, and UX guidelines using `scripts/search.py --domain`.
- **Stack Guidance**: Provide stack-specific implementation rules (React, SwiftUI, Flutter, etc.) using `scripts/search.py --stack`.

### 2. Design Documentation (Docs-First)
- **User Experience**: Create flows, IA, and screen specs in `.documents/uiux/UIUX.md`.
- **Design Audits**: Review existing UIs for friction, inconsistency, and accessibility gaps.
- **Microcopy**: Define tone and UI strings (buttons, toasts, errors) for the copy deck.

## Workflow

1) **Analyze & Plan**: Extract product context, goals, style, and stack (default: `html-tailwind`).
2) **Generate System**: Run `python3 scripts/search.py "<query>" --design-system` as the primary direction.
3) **Refine Intelligence**: Use focused `--domain` or `--stack` searches for specific components or rules.
4) **Document (Optional)**: If formal docs are needed, use `python3 scripts/uiux_scaffold.py` to create skeletons in `.documents/uiux/`.
5) **Synthesize**: Return concise, implementable guidance covering both visual systems and behavioral flows.

## Rules
- Always run `--design-system` first for non-trivial UI requests.
- Ensure accessible contrast (WCAG AA) and keyboard navigation.
- Keep documentation implementation-agnostic; keep intelligence stack-specific.
- Documentation writes MUST target `.documents/uiux/`.

## Resources
- `references/uiux-checklist.md` - Core UX/UI audit checklist.
- `assets/TEMPLATE.md` - Base template for documentation.
- `references/upstream-README.md` - Design intelligence overview.
