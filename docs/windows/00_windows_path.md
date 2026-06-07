# Windows Path

This learning path is for people using Windows 10 or Windows 11.

It explains how to set up a beginner-friendly Python development environment on Windows step by step.

The goal is to start from zero and reach the point where you can:

- open PowerShell,
- use basic terminal commands,
- install developer tools,
- install Git,
- configure Git,
- install Visual Studio Code,
- create a Python project with `uv`,
- open the project in VS Code,
- run commands from the VS Code terminal,
- commit your first changes,
- push your project to GitHub.

## Before you start

Before following the Windows path, you should read:

- [What Is a Terminal?](../01_what_is_a_terminal.md)
- [Files, Folders, and Paths](../02_files_folders_and_paths.md)
- [Basic Terminal Commands](../03_basic_terminal_commands.md)

These sections explain the basic ideas used throughout this path.

## What you need

You need:

- a computer with Windows 10 or Windows 11,
- access to your user account,
- an internet connection,
- permission to install applications.

Some steps may require administrator permissions.

If you are using a school, university, or work computer, some installation steps may be blocked by your organization.

## Recommended order

Follow the Windows path in this order:

1. Open PowerShell
2. Learn basic PowerShell commands
3. Create a projects folder
4. Install Chocolatey
5. Install Git
6. Configure Git
7. Create a GitHub account
8. Connect Git with GitHub
9. Install Visual Studio Code
10. Open a folder in VS Code
11. Open the VS Code terminal
12. Install `uv`
13. Create the first Python project
14. Run the project
15. Make the first commit
16. Push the project to GitHub

## Planned pages

The Windows path will be split into small pages.

Planned structure:

```text
docs/windows/
├── 00_windows_path.md
├── 01_open_powershell.md
├── 02_basic_powershell_commands.md
├── 03_create_projects_folder.md
├── 04_install_chocolatey.md
├── 05_install_git.md
├── 06_configure_git.md
├── 07_install_vscode.md
├── 08_open_project_in_vscode.md
├── 09_open_vscode_terminal.md
├── 10_install_uv.md
└── 11_create_first_uv_project.md
```

GitHub-related topics may also link to the shared Git and GitHub section.

## Why Windows first?

Windows is a common starting point for beginners.

It can also be confusing because there are several terminal-related tools:

- Command Prompt,
- PowerShell,
- Windows Terminal,
- Git Bash,
- the integrated terminal in VS Code.

This guide uses PowerShell as the main Windows terminal.

Later, Visual Studio Code will also use PowerShell in its integrated terminal.

## PowerShell, Windows Terminal, and VS Code terminal

These names can be confusing at first.

### PowerShell

PowerShell is the shell used in this guide.

It understands commands such as:

```powershell
Get-Location
```

and:

```powershell
Get-ChildItem
```

## Windows Terminal

Windows Terminal is an application that can open PowerShell and other shells.

It is like a modern terminal window.

## VS Code terminal

The VS Code terminal is a terminal panel inside Visual Studio Code.

It can also run PowerShell.

This means you can use PowerShell in two places:

- as a separate PowerShell window,
- inside Visual Studio Code.

Both are useful.

## Recommended project location

For this guide, it is recommended to keep programming projects in one folder.

Example:

```text
C:\Users\YourName\Documents\Projects
```

Later, you will create this folder and use it for your first Python project.

Avoid spaces in beginner project folder names.

Prefer:

```text
my-first-project
```

Instead of:

```text
My First Project
```

## What this path will not cover yet

This Windows path will not focus on:

- advanced PowerShell scripting,
- Windows administration,
- WSL,
- Docker,
- advanced Git workflows,
- SSH keys in depth,
- Python packaging theory.

The goal is to build a simple, working beginner setup first.

### Common questions

**Should I use Command Prompt or PowerShell?**

Use PowerShell for this guide.

Command Prompt is older and uses different commands.

**Should I use Git Bash?**

Not at the beginning.

Git Bash can be useful later, but this guide uses PowerShell to keep the Windows path consistent.

**Should I use WSL?**

Not at the beginning.

WSL is powerful, but it adds another layer of complexity. This guide starts with regular Windows tools.

**Do I need administrator permissions?**

Some installation steps may require administrator permissions.

If a command says that access is denied or that administrator rights are required, you may need to open PowerShell as Administrator.

The guide will mention this when needed.

## Next step

Next, learn how to open PowerShell:

- [Open PowerShell](01_open_powershell.md)