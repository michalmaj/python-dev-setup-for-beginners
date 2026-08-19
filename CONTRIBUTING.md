# Contributing Guide

Thank you for helping improve **Python Dev Setup for Beginners**.

This repository is built through small documentation changes. The goal is to keep every page clear enough for a complete beginner.

## Workflow

Do not commit directly to `main`. Create a branch for each focused change:

```text
docs/add-install-git-guide
docs/fix-windows-navigation
chore/update-pr-template
```

Use short commits with this format:

```text
<type>: <short description>
```

Examples:

```text
docs: add Git installation guide
docs: clarify PowerShell prompt
chore: add pull request template
```

## Writing Rules

Follow `docs/conventions.md` for all public documentation.

Write in English, use simple language, explain every command, and always say where the command should be run. Prefer one recommended beginner path over several alternatives.

Use `powershell` code blocks for Windows PowerShell commands, `bash` for Linux/macOS terminal commands, and `text` for output.

## Local Checks

Before opening a pull request, run:

```bash
git diff --check
```

This catches trailing whitespace and basic formatting issues.

Also review changed Markdown files as a beginner would. Check that links point to existing pages and that each tutorial has a clear next step.

## Pull Requests

Keep pull requests small and focused. Include a short summary, list changed pages, and mention manual checks performed.
