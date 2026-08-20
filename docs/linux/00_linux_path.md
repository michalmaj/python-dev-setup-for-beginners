# Linux Path

This learning path is for people using Ubuntu, Debian, or a similar Linux distribution.

It explains how to set up a beginner-friendly Python development environment on Linux step by step.

The goal is to start from zero and reach the point where you can:

- open the terminal,
- use basic shell commands,
- create a dedicated projects folder,
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

Before following the Linux path, you should read:

- [What Is a Terminal?](../01_what_is_a_terminal.md)
- [Files, Folders, and Paths](../02_files_folders_and_paths.md)
- [Basic Terminal Commands](../03_basic_terminal_commands.md)

These sections explain the basic ideas used throughout this path.

## What you need

You need:

- a computer with Linux installed,
- access to your user account,
- an internet connection,
- permission to install applications.

This first version focuses on Ubuntu and Debian-style systems.

If you use Fedora, Arch, openSUSE, or another distribution, some installation commands will be different.

## Recommended order

Follow the Linux path in this order:

1. Open the terminal
2. Learn basic shell commands
3. Create a projects folder
4. Install Git
5. Configure Git
6. Create a local Git repository
7. Create a GitHub account
8. Create a repository on GitHub
9. Connect Git with GitHub
10. Install Visual Studio Code
11. Open a folder in VS Code
12. Open the VS Code terminal
13. Install `uv`
14. Create the first Python project
15. Run the project
16. Make the first commit
17. Push the project to GitHub

## Current status

The Linux path is in progress.

Available now:

```text
docs/linux/
├── 00_linux_path.md
├── 01_open_terminal.md
├── 02_basic_shell_commands.md
├── 03_create_projects_folder.md
├── 04_install_git.md
├── 05_configure_git.md
└── 06_create_local_git_repository.md
```

Later pages will add GitHub, VS Code, `uv`, and the first Python project workflow.

## Why start with Ubuntu and Debian?

Ubuntu is a common beginner Linux distribution.

Debian and Ubuntu also use similar package-management commands.

That makes them a good first target for this guide.

## Terminal, shell, and desktop environment

These names can be confusing at first.

### Terminal

The terminal is the application window where you type commands.

It may be named:

- Terminal,
- GNOME Terminal,
- Konsole,
- Xfce Terminal.

The exact name depends on your Linux desktop.

### Shell

The shell is the program inside the terminal that understands commands.

Most beginner Linux systems use a shell called Bash.

### Desktop environment

The desktop environment controls windows, menus, panels, and application launchers.

Ubuntu often uses GNOME, but other Linux systems may look different.

The commands in this guide should still feel familiar on many Linux systems.

## Recommended project location

For this guide, it is recommended to keep programming projects in one folder.

Example:

```text
/home/yourname/Projects
```

You will create this folder in the dedicated guide:

- [Create a Projects Folder](03_create_projects_folder.md)

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

This Linux path will not focus on:

- advanced shell scripting,
- Linux server administration,
- multiple Linux distributions in detail,
- Docker,
- advanced Git workflows,
- SSH keys in depth,
- Python packaging theory.

The goal is to build a simple, working beginner setup first.

## Next step

Next, learn how to open the terminal:

- [Open the Terminal](01_open_terminal.md)
