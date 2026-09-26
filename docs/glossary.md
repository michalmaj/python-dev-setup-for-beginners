# Glossary

Use this page when a word in the guide is still new or confusing. Definitions describe how each term is used in this repository.

## Terminal and file system

### Command

A command is an instruction you type into a terminal, such as `git status`.

### Terminal

A terminal is an application or panel where you type commands. This guide uses PowerShell on Windows and Terminal-style applications on Linux and macOS.

### Shell

A shell is the program inside a terminal that understands commands.

PowerShell is the shell used in the Windows path. Bash is common on Linux, and Zsh is the default on modern macOS versions.

### Current folder

The current folder is where the terminal is working now.

Check it with `Get-Location` in PowerShell or `pwd` on Linux and macOS.

### Folder

A folder contains files or other folders. Developers also call it a directory.

### Home folder

The home folder is the main folder for your user account. On Linux and macOS, `~` is a shortcut for it. PowerShell uses `$HOME`.

### Path

A path is the address of a file or folder.

Examples:

```text
C:\Users\YourName\Documents\Projects
/home/yourname/Projects
/Users/yourname/Projects
```

### PATH

`PATH` is a setting that tells a shell where to find commands. Reopening the terminal lets it read PATH changes made by an installer.

### Hidden file or folder

A hidden item is normally not shown in a basic file listing. Git stores repository data in a hidden `.git` folder.

### Case-sensitive

Case-sensitive means uppercase and lowercase letters are different. On Linux, `Projects` and `projects` can be different folders.

### Exact error message

The exact error message is the full text shown when a command fails. It is more useful than a description such as "it does not work."

### command not found

This error means the shell cannot find the command. The tool may be missing, misspelled, or not yet available through PATH.

## Installing tools

### Package manager

A package manager installs, updates, and removes software.

This guide uses Chocolatey on Windows, `apt` on Ubuntu and Debian, and Homebrew on macOS.

### Chocolatey

Chocolatey provides the `choco` command for installing software in the Windows path.

### apt

`apt` is the package manager used in the Ubuntu and Debian-focused Linux path.

Example:

```bash
sudo apt install git
```

### Homebrew

Homebrew provides the `brew` command for installing developer tools in the macOS path.

### sudo

`sudo` runs a Linux or macOS command with administrator permissions. The Linux path uses it for system package installation.

### Installer script

An installer script installs a tool by running a series of commands. Run installer scripts only from official sources you trust.

### curl

`curl` downloads data from a web address. The Linux path uses it to download the official `uv` installer.

### .deb package

A `.deb` file is an installer package used by Debian, Ubuntu, and similar Linux distributions.

### Apple Silicon

Apple Silicon is the name for Apple-designed processors in newer Macs. Homebrew commonly uses `/opt/homebrew` on these Macs.

## Git and GitHub

### Repository

A repository is a project folder that Git tracks. It contains project files and their saved history.

### Git

Git tracks changes in files and saves versions of a project as commits.

### GitHub

GitHub is a website that stores Git repositories online. Git works locally; GitHub stores an online copy.

### 2FA

Two-factor authentication adds a second security check when signing in to an account.

### Commit

A commit is a saved point in Git history. It records selected changes with a short message.

### Stage

To stage a file means to select it for the next commit.

Example:

```bash
git add README.md
```

### Working tree

The working tree is the current set of project files on your computer. A clean working tree has no uncommitted changes.

### Remote

A remote connects a local Git repository to an online repository.

### origin

`origin` is the conventional name for the main remote repository.

### HTTPS URL

An HTTPS URL is an address Git can use to connect to GitHub.

```text
https://github.com/YOUR-USERNAME/my-project.git
```

### Upstream branch

An upstream branch is the remote branch used by default for later pushes and pulls.

This command creates that connection:

```bash
git push -u origin main
```

### Push

To push means to send local commits to a remote repository such as GitHub.

## Visual Studio Code

### Visual Studio Code

Visual Studio Code, or VS Code, is the code editor used in this guide.

### Code editor

A code editor is an application for reading and changing source files. It understands programming file formats and project folders.

### Explorer

The Explorer is the VS Code panel that shows the files and folders in the open project.

### Integrated terminal

The integrated terminal is a terminal panel inside VS Code. It lets you run project commands without leaving the editor.

### Workspace Trust

Workspace Trust asks whether you trust the files in an opened folder. Trust folders you created yourself and be careful with unknown downloads.

## Python projects

### Project

A project is a folder containing the files for one piece of work. This guide creates `my-first-python-project`.

### Source code

Source code is the text written in a programming language. The first project's Python source code lives inside `src`.

### pyproject.toml

`pyproject.toml` describes a Python project, including its name, Python requirement, build system, and dependencies.

### src folder

The `src` folder keeps Python source code separate from configuration and documentation files.

### Entry point

An entry point is a command provided by a project. In this guide, `uv run my-first-python-project` runs the first application.

### Dependency

A dependency is a package that a project needs in order to work.

### uv

`uv` creates Python projects and manages Python versions, dependencies, environments, and lock files.

### uv.lock

`uv.lock` records exact dependency versions so a project can use the same resolved versions later.

### Virtual environment

A virtual environment is an isolated place for one project's Python and packages. `uv` creates it in `.venv` when needed.

## Continue learning

Return to:

- [Start Here](00_start_here.md)
- [Windows Path](windows/00_windows_path.md)
- [Linux Path](linux/00_linux_path.md)
- [macOS Path](macos/00_macos_path.md)
