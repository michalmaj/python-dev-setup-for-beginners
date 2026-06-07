# Documentation Conventions

This document describes how documentation should be written in this repository.

The goal of this guide is to help complete beginners. Many readers may never have used a terminal, Git, GitHub, Visual Studio Code, or Python project tools before.

Because of that, the documentation should be clear, slow, practical, and beginner-friendly.

## Language

All public repository content should be written in English.

This includes:

- README files,
- documentation pages,
- file names,
- folder names,
- commit messages,
- pull request titles,
- pull request descriptions,
- code examples,
- comments in code examples.

## Target reader

Write for someone who may not know:

- what a terminal is,
- what a command is,
- where commands should be typed,
- what a folder path is,
- what Git is,
- what GitHub is,
- what Visual Studio Code is,
- what Python virtual environments are,
- what a package manager is.

Avoid assuming previous programming experience.

## Writing style

Use simple and direct language.

Prefer:

```text
Open PowerShell.
```

Instead of:

```text
Launch a shell environment.
```

Prefer:

```text
This command creates a new folder.
```

Instead of:

```text
This command initializes a directory structure.
```

The documentation should be friendly, but not childish.

## Page structure

Most tutorial pages should follow this structure:

```text
# Page Title

Short introduction.

## What you will learn

## Before you start

## Step 1: ...

## Step 2: ...

## How to check that it worked

## Common problems

## Next step
```

Not every page must use every section, but this structure should be the default.

## Explain every command

Do not show a command without explaining what it does.

For example, avoid this:

```bash
mkdir my-project
cd my-project
```

Prefer this:

```bash
mkdir my-project
```

This command creates a new folder named `my-project`.

```bash
cd my-project
```

This command moves the terminal into the `my-project` folder.

## Always say where to run commands

Beginners may not know where a command should be typed.

Be explicit.

Examples:

```text
Run this command in PowerShell.
```

```text
Run this command in the VS Code terminal.
```

```text
Run this command in the terminal inside your project folder.
```

## Show expected results

Whenever possible, show how the user can check that a step worked.

Example:

```bash
git --version
```

Expected result:

```text
git version 2.x.x
```

The exact version number may be different. That is fine.

## Use platform labels

When a command is platform-specific, label it clearly.

Examples:

```text
Windows PowerShell
```

```text
Linux terminal
```

```text
macOS Terminal
```

Do not mix platform-specific instructions in the same paragraph unless the difference is very small.

## PowerShell and Bash

Use `powershell` for Windows PowerShell examples:

```powershell
Get-Location
```

Use `bash` for Linux and macOS examples:

```bash
pwd
```

When a command works in more than one Unix-like shell, it can be shown as `bash`.

## Avoid too many alternatives

Beginners can get confused when they see many possible ways to do the same thing.

Prefer one recommended path.

Alternative paths may be mentioned later in a separate section named:

```text
Alternative approach
```

or:

```text
Advanced note
```

## Common problems

Beginner pages should include a short `Common problems` section when useful.

Good examples:

- command not found,
- permission denied,
- wrong folder,
- Git not recognized,
- VS Code not opening,
- Python interpreter not found,
- `uv` not found.

Each problem should include:

1. what the user may see,
2. what it usually means,
3. what to try next.

## Screenshots

Screenshots may be added later.

When adding screenshots:

- store them in `assets/images/`,
- use descriptive file names,
- avoid personal information,
- avoid local usernames in visible paths when possible,
- keep screenshots focused on the relevant part of the screen.

Example file name:

```text
windows-powershell-start-menu.png
```

## Paths and usernames

Avoid using personal local paths such as:

```text
C:\Users\Michal\...
```

Prefer generic examples:

```text
C:\Users\YourName\Documents\Projects
```

or:

```text
~/projects
```

## Code blocks

Use code blocks for commands, file contents, and terminal output.

Use inline code for command names, file names, folder names, and short examples.

Examples:

```text
Use `cd` to change the current folder.
```

```text
Open `README.md`.
```

## Terminology

Introduce terms before using them heavily.

For example, before using the word `repository`, explain that a repository is a project folder tracked by Git.

Good beginner-friendly definitions should be short and practical.

Example:

```text
A repository is a project folder whose changes are tracked by Git.
```

## Links

Links should be helpful, but not required for understanding the page.

A beginner should be able to follow the guide without opening ten external pages.

Use links mainly for:

- official documentation,
- downloads,
- further reading.

## Page endings

Each tutorial page should end with a short next step.

Example:

```markdown
## Next step

Next, learn how to move between folders in the terminal.
```

## Out of scope for beginner pages

Avoid going too deep into:

- shell scripting,
- advanced Git workflows,
- Git internals,
- SSH internals,
- Python packaging theory,
- operating system internals,
- advanced VS Code configuration.

These topics can be linked later, but they should not block the beginner path.