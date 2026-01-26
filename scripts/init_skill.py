#!/usr/bin/env python3
import argparse
import os
from datetime import date


def normalize_name(name: str) -> str:
    name = name.strip().lower().replace(" ", "-")
    allowed = set("abcdefghijklmnopqrstuvwxyz0123456789-")
    name = "".join(ch for ch in name if ch in allowed)
    name = name.strip("-")
    if not name:
        raise ValueError("Skill name must contain letters, digits, or hyphens")
    if len(name) > 64:
        raise ValueError("Skill name must be <= 64 characters")
    return name


def make_dirs(base: str, resources: list[str]) -> None:
    os.makedirs(base, exist_ok=False)
    for res in resources:
        os.makedirs(os.path.join(base, res), exist_ok=True)


def write_skill_md(path: str, name: str, description: str) -> None:
    content = (
        "---\n"
        f"name: {name}\n"
        f"description: {description}\n"
        "---\n\n"
        "# Mission\n"
        "TODO: Define the mission.\n\n"
        "## Inputs\n"
        "- TODO\n\n"
        "## Outputs\n"
        "- TODO\n\n"
        "## Workflow\n"
        "1) TODO\n\n"
        "## Rules\n"
        "- TODO\n"
    )
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)


def main() -> int:
    parser = argparse.ArgumentParser(description="Initialize a Codex skill skeleton")
    parser.add_argument("skill_name", help="Skill name (lowercase letters, digits, hyphens)")
    parser.add_argument("--path", required=True, help="Output directory for the skill")
    parser.add_argument("--resources", default="", help="Comma-separated resources: scripts,references,assets")
    parser.add_argument("--examples", action="store_true", help="Create placeholder example files")
    args = parser.parse_args()

    name = normalize_name(args.skill_name)
    out_dir = os.path.abspath(args.path)
    skill_dir = os.path.join(out_dir, name)

    resources = [r.strip() for r in args.resources.split(",") if r.strip()]
    for r in resources:
        if r not in {"scripts", "references", "assets"}:
            raise ValueError(f"Unknown resource: {r}")

    description = "TODO: Describe when to use this skill and what it does"

    make_dirs(skill_dir, resources)
    write_skill_md(os.path.join(skill_dir, "SKILL.md"), name, description)

    if args.examples:
        for res in resources:
            example_path = os.path.join(skill_dir, res, "EXAMPLE.md")
            with open(example_path, "w", encoding="utf-8") as f:
                f.write(f"# Example {res} file\n\nCreated {date.today().isoformat()}\n")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
