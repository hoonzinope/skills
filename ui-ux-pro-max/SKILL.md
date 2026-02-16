---
name: ui-ux-pro-max
description: UI/UX design intelligence skill with searchable style, color, typography, landing, chart, and UX guideline datasets plus stack-specific best practices. Use when users ask to design, improve, review, or implement UI/UX (web/mobile) and when a structured design system recommendation should be generated before coding.
---

# Mission
Generate practical, high-quality UI/UX guidance and implementation direction using local searchable datasets.

## Inputs
- User product context (industry, product type, target users)
- Desired style/mood and constraints
- Tech stack (default to `html-tailwind` when unspecified)

## Outputs
- Design system recommendation (pattern, style, colors, typography, effects, anti-patterns)
- Domain-specific guidance (styles, charts, UX, typography, icons)
- Stack-specific implementation rules

## Workflow
1) Analyze request
- Extract product type, domain, UX goals, style keywords, and stack.
- If stack is missing, use `html-tailwind`.

2) Generate design system first
- Run:
```bash
python3 scripts/search.py "<query>" --design-system -p "<project_name>"
```
- Use this as the primary direction before producing UI code.

3) Run focused follow-up searches when needed
- Domain search:
```bash
python3 scripts/search.py "<query>" --domain <product|style|color|typography|landing|chart|ux|icons|react|web> -n 3
```
- Stack search:
```bash
python3 scripts/search.py "<query>" --stack <html-tailwind|react|nextjs|astro|vue|nuxtjs|nuxt-ui|svelte|swiftui|react-native|flutter|shadcn|jetpack-compose>
```

4) Synthesize into implementable guidance
- Return concise decisions: layout pattern, component style, palette, type scale, interaction rules, accessibility checks, and stack-specific implementation notes.

5) Optional persistence for multi-page projects
- Save master system and optional page overrides:
```bash
python3 scripts/search.py "<query>" --design-system --persist -p "<project_name>" --page "<page_name>"
```

## Rules
- Always run `--design-system` first for non-trivial UI requests.
- Prefer SVG icon libraries over emoji icons.
- Ensure visible hover/focus states and keyboard accessibility.
- Keep color contrast accessible (WCAG AA target).
- Match guidance to user stack and avoid stack-agnostic vague advice.

## References
- Upstream overview: `references/upstream-README.md`
- Upstream architecture notes: `references/upstream-CLAUDE.md`
