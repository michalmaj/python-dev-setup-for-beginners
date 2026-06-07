# Project Roadmap

This document describes the planned structure and development order for **Python Dev Setup for Beginners**.

The goal of this repository is to help complete beginners set up a modern Python development environment step by step.

The guide starts before Python itself. It first introduces basic developer tools and concepts such as terminals, folders, command-line commands, Git, GitHub, Visual Studio Code, and package managers.

## Guiding principles

This project follows a few simple principles.

### Beginner-first explanations

Every topic should be explained as if the reader has never used developer tools before.

The guide should avoid assuming that the reader already knows what a terminal, command, folder path, repository, commit, or package manager is.

### Small steps

Each section should focus on one small goal.

A good section should answer:

1. What are we doing?
2. Why are we doing it?
3. How can we check that it worked?
4. What can go wrong?

### Practical workflow

The guide should not only explain concepts.

It should lead the reader toward a practical outcome:

- a working terminal,
- installed development tools,
- configured Git,
- a GitHub account,
- Visual Studio Code,
- a first Python project created with `uv`,
- a first commit pushed to GitHub.

### English-only repository

All public repository content should be written in English:

- README files,
- documentation,
- file names,
- folder names,
- commit messages,
- pull request descriptions,
- code examples.

## Planned learning paths

The guide will be organized around three operating system paths.

### 1. Windows path

The Windows path is the first priority.

Planned topics:

- opening PowerShell,
- understanding PowerShell basics,
- basic file and folder commands,
- installing Chocolatey,
- installing Git,
- configuring Git,
- installing Visual Studio Code,
- opening a project in VS Code,
- opening the VS Code terminal,
- installing `uv`,
- creating the first Python project,
- running the project,
- committing and pushing the project to GitHub.

### 2. Linux path

The Linux path is the second priority.

The first version will focus mainly on Ubuntu/Debian-based systems.

Planned topics:

- opening the terminal,
- understanding shell basics,
- basic file and folder commands,
- installing tools with the system package manager,
- installing Git,
- configuring Git,
- installing Visual Studio Code,
- installing `uv`,
- creating the first Python project,
- running the project,
- committing and pushing the project to GitHub.

Other distributions may be added later in a separate section.

### 3. macOS path

The macOS path is the third priority.

Planned topics:

- opening Terminal,
- understanding shell basics,
- basic file and folder commands,
- explaining Homebrew,
- optionally installing Homebrew,
- installing Git,
- configuring Git,
- installing Visual Studio Code,
- installing `uv`,
- creating the first Python project,
- running the project,
- committing and pushing the project to GitHub.

## Shared sections

Some topics are shared across all operating systems.

### Terminal basics

Planned topics:

- what a terminal is,
- what a command is,
- what a working directory is,
- absolute and relative paths,
- creating folders,
- listing files,
- changing directories,
- creating files,
- removing files and folders safely.

### Git and GitHub

Planned topics:

- what Git is,
- what GitHub is,
- why Git and GitHub are not the same thing,
- configuring Git identity,
- creating a GitHub account,
- creating a repository on GitHub,
- cloning a repository,
- connecting a local repository to GitHub,
- making a first commit,
- pushing code to GitHub.

### Visual Studio Code

Planned topics:

- what VS Code is,
- installing VS Code,
- opening a folder,
- understanding the Explorer panel,
- opening the integrated terminal,
- selecting a Python interpreter,
- running Python files,
- using basic extensions.

### uv and Python projects

Planned topics:

- what `uv` is,
- why this guide uses `uv`,
- creating a new project,
- understanding the generated files,
- running Python code,
- adding dependencies,
- using the virtual environment created by `uv`.

### Troubleshooting

Planned topics:

- command not found,
- permission errors,
- PATH problems,
- PowerShell execution policy issues,
- Git authentication problems,
- VS Code terminal confusion,
- Python interpreter not found,
- `uv` not found,
- wrong folder opened in VS Code.

## Suggested milestones

### Milestone 1: Repository foundation

Goal: create the initial repository structure and navigation.

Planned work:

- create the repository structure,
- add the main README,
- add the Start Here page,
- add this roadmap,
- define documentation conventions.

### Milestone 2: Terminal fundamentals

Goal: explain the basic concepts required before installing tools.

Planned work:

- add an introduction to terminals,
- add a guide to files, folders, and paths,
- add a guide to basic terminal commands,
- compare PowerShell and Unix-like shells at a beginner level.

### Milestone 3: Windows setup path

Goal: create the first complete operating system path.

Planned work:

- add a Windows path overview,
- add a guide to opening PowerShell,
- add a guide to basic PowerShell commands,
- add a guide to creating a recommended projects folder,
- add a guide to installing Chocolatey,
- install Git,
- install VS Code,
- install `uv`,
- create the first project.

### Milestone 4: Git and GitHub workflow

Goal: teach the first full GitHub workflow.

Planned work:

- Git vs GitHub,
- Git configuration,
- creating a GitHub account,
- creating a repository,
- first commit,
- first push.

### Milestone 5: VS Code workflow

Goal: teach how to work inside VS Code.

Planned work:

- opening a project folder,
- using the Explorer,
- using the integrated terminal,
- running Python code,
- understanding common beginner mistakes.

### Milestone 6: Linux setup path

Goal: add the Linux version of the setup guide.

Planned work:

- Ubuntu/Debian-focused setup,
- Git installation,
- VS Code installation,
- `uv` installation,
- first project workflow.

### Milestone 7: macOS setup path

Goal: add the macOS version of the setup guide.

Planned work:

- Terminal basics,
- Homebrew explanation,
- Git installation,
- VS Code installation,
- `uv` installation,
- first project workflow.

### Milestone 8: Troubleshooting and polish

Goal: improve beginner experience.

Planned work:

- common errors,
- screenshots,
- glossary,
- checklists,
- verification steps,
- links between related sections.

## Out of scope for now

The first version of this repository will not focus on:

- advanced Python programming,
- data science,
- web frameworks,
- Docker,
- CI/CD,
- advanced Git workflows,
- Linux server administration,
- SSH keys in depth,
- detailed shell scripting.

These topics may be added later or linked to external resources.