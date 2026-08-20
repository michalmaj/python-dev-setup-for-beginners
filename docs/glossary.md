# Glossary

Use this page when you see a word that is still new or confusing.

The definitions are short on purpose. They explain how each term is used in this guide.

## Command

A command is an instruction you type into a terminal.

Example:

```powershell
git status
```

## Package manager

A package manager installs, updates, and removes software.

On Ubuntu and Debian, this guide uses `apt`.

## apt

`apt` is a command-line package manager used by Ubuntu, Debian, and similar Linux distributions.

Example:

```bash
sudo apt install git
```

## sudo

`sudo` runs a command with administrator permissions.

Linux may ask for your password when you use it.

## Terminal

A terminal is a place where you type commands.

On Windows, this guide uses PowerShell and the VS Code terminal.

## Shell

A shell is the program that understands terminal commands.

PowerShell is a shell.

Bash is also a shell.

It is common on Linux.

## Bash

Bash is a common Linux shell.

In this guide, Linux terminal examples use Bash-style commands.

## Folder

A folder is a place that contains files or other folders.

Developers often call folders `directories`.

## Hidden folder

A hidden folder is a folder that is usually not shown by default.

On Linux, hidden file and folder names often start with a dot.

Example:

```text
.git
```

## Path

A path is the address of a file or folder on your computer.

Example:

```text
C:\Users\YourName\Documents\Projects
```

Example on Linux:

```text
/home/yourname/Projects
```

## Home folder

Your home folder is the main folder for your user account.

On Linux, it usually looks like:

```text
/home/yourname
```

The `~` symbol is a shortcut for your home folder.

## Case-sensitive

Case-sensitive means that uppercase and lowercase letters are treated as different.

On Linux, these can be three different folder names:

```text
Projects
projects
PROJECTS
```

## Project

A project is a folder that contains the files for one piece of work.

In this guide, `my-first-python-project` is a project.

## Repository

A repository is a project folder that Git tracks.

It contains your files and the Git history for those files.

## Git

Git is a tool that tracks changes in files.

It lets you save versions of your work with commits.

## GitHub

GitHub is a website where Git repositories can be stored online.

Git works on your computer. GitHub stores a copy online.

## Commit

A commit is a saved point in your project history.

It records what changed and includes a short message.

## Stage

To stage a file means to tell Git that this file should go into the next commit.

Example:

```powershell
git add main.py
```

## Remote

A remote is a connection between your local Git repository and an online repository.

In this guide, the remote usually points to GitHub.

## Push

To push means to send your local commits to GitHub.

Example:

```powershell
git push
```

## Visual Studio Code

Visual Studio Code, or VS Code, is the code editor used in this guide.

It lets you edit files, open folders, and use an integrated terminal.

## uv

`uv` is a tool for creating and running Python projects.

This guide uses it to create the first Python project and run `main.py`.

## Virtual environment

A virtual environment is an isolated place for a Python project.

It helps one project keep its Python tools and packages separate from another project.

## Next step

Return to:

- [Start Here](00_start_here.md)
- [Windows Path](windows/00_windows_path.md)
