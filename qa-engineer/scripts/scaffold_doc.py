#!/usr/bin/env python3
import argparse
import os
from datetime import date


def render_template(text: str, title: str, d: str) -> str:
    return text.replace("{{DATE}}", d).replace("{{TITLE}}", title)


def build_sections(sections, prefix="## "):
    lines = []
    for sec in sections:
        lines.append(f"{prefix}{sec}")
        lines.append("")
        lines.append("- TODO")
        lines.append("")
    return lines


def ensure_documents_path(path: str) -> None:
    norm = path.replace("\\", "/")
    if norm.startswith("./"):
        norm = norm[2:]
    if not norm.startswith(".documents/"):
        raise SystemExit("Output must be under .documents/ (guardrail)")


def main() -> int:
    parser = argparse.ArgumentParser(description="Create or append a document scaffold with a date header")
    parser.add_argument("--output", required=True, help="Output file path")
    parser.add_argument("--title", required=True, help="Document title (without date)")
    parser.add_argument("--sections", required=False, help="Comma-separated section names")
    parser.add_argument("--template", required=False, help="Path to a template file with {{DATE}}/{{TITLE}}")
    parser.add_argument("--force", action="store_true", help="Overwrite if file exists")
    parser.add_argument("--append", action="store_true", help="Append a new dated section to an existing file")
    parser.add_argument("--date", default=None, help="Override date (YYYY-MM-DD)")
    args = parser.parse_args()

    out_path = args.output
    ensure_documents_path(out_path)
    os.makedirs(os.path.dirname(out_path), exist_ok=True)

    d = args.date or date.today().isoformat()

    if args.template:
        if not os.path.exists(args.template):
            raise SystemExit(f"Template not found: {args.template}")
        with open(args.template, "r", encoding="utf-8") as f:
            tpl = f.read()
        rendered = render_template(tpl, args.title, d).rstrip() + "\n"

        if args.append:
            if not os.path.exists(out_path):
                raise SystemExit(f"File does not exist for append: {out_path}")
            with open(out_path, "a", encoding="utf-8") as f:
                f.write("\n" + rendered)
            return 0

        if os.path.exists(out_path) and not args.force:
            raise SystemExit(f"File exists: {out_path}. Use --force to overwrite or --append to extend.")

        with open(out_path, "w", encoding="utf-8") as f:
            f.write(rendered)
        return 0

    if not args.sections:
        raise SystemExit("--sections is required when --template is not provided")

    sections = [s.strip() for s in args.sections.split(",") if s.strip()]

    if args.append:
        if not os.path.exists(out_path):
            raise SystemExit(f"File does not exist for append: {out_path}")
        lines = ["", f"## {args.title} ({d})", ""]
        lines.extend(build_sections(sections, prefix="### "))
        with open(out_path, "a", encoding="utf-8") as f:
            f.write("\n".join(lines).rstrip() + "\n")
        return 0

    if os.path.exists(out_path) and not args.force:
        raise SystemExit(f"File exists: {out_path}. Use --force to overwrite or --append to extend.")

    lines = [f"# {args.title} ({d})", ""]
    lines.extend(build_sections(sections, prefix="## "))

    with open(out_path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines).rstrip() + "\n")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
