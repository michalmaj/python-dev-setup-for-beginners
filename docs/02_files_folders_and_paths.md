# Files, Folders, and Paths

Before you start using developer tools, you need to understand how computers organize files.

Most programming tools work with files and folders. Git tracks files. Visual Studio Code opens folders. Python projects are folders. Terminals also work inside folders.

This section explains these ideas slowly.

## What you will learn

In this section, you will learn:

- what files are,
- what folders are,
- what a path is,
- what the current folder means,
- what absolute and relative paths are,
- how paths look different on Windows, Linux, and macOS,
- why paths matter when using a terminal.

## Files

A file is a single item stored on your computer.

Examples of files:

```text
README.md
main.py
notes.txt
image.png
```

A file usually has a name and sometimes an extension.

For example:

```text
main.py
```

Here:

- `main` is the file name,
- `.py` is the file extension.

The `.py` extension usually means that the file contains Python code.

## Folders

A folder is a place that can contain files and other folders.

Folders help organize your work.

Example:

```text
my-project/
├── README.md
├── main.py
└── notes/
    └── ideas.txt
```

In this example:

- `my-project` is a folder,
- `README.md` is a file,
- `main.py` is a file,
- `notes` is another folder inside `my-project`,
- `ideas.txt` is a file inside the `notes` folder.

Folders can be nested inside other folders.

## Project folders

A programming project is usually just a folder with files inside it.

For example, a small Python project may look like this:

```text
hello-python/
├── README.md
├── pyproject.toml
└── hello.py
```

Later in this guide, you will create a Python project folder with `uv`.

## Paths

A path tells you where a file or folder is located.

For example, this path points to a folder on Windows:

```text
C:\Users\YourName\Documents\Projects
```

This path points to a folder on Linux or macOS:

```text
/home/your-name/projects
```

A path is like an address for a file or folder.

## Path separators

Different operating systems write paths differently.

Windows usually uses backslashes:

```text
C:\Users\YourName\Documents
```

Linux and macOS use forward slashes:

```text
/home/your-name/Documents
```

In many programming tools, you may also see forward slashes used on Windows:

```text
docs/00_start_here.md
```

That is normal in many developer tools and documentation.

## Current folder

The terminal always works inside one folder at a time.

This is called the current folder or current directory.

When you run a command, the result often depends on the current folder.

For example, if your terminal is inside this folder:

```text
C:\Users\YourName\Documents
```

and you create a new folder named `projects`, it will be created inside `Documents`.

The current folder matters a lot when using commands.

## How to check the current folder

On Windows PowerShell, run:

```powershell
Get-Location
```

This command shows the current folder.

Example output:

```text
Path
----
C:\Users\YourName\Documents
```

On Linux and macOS, run:

```bash
pwd
```

This command prints the current folder.

Example output:

```text
/home/your-name/Documents
```

The exact path on your computer will be different. That is normal.

## Absolute paths

An absolute path starts from the root of the file system.

It describes the full location of a file or folder.

Example on Windows:

```text
C:\Users\YourName\Documents\Projects\hello-python
```

Example on Linux:

```text
/home/your-name/projects/hello-python
```

Example on macOS:

```text
/Users/your-name/projects/hello-python
```

Absolute paths are useful because they point to the same location no matter where your terminal currently is.

## Relative paths

A relative path starts from the current folder.

For example, imagine your terminal is currently inside this folder:

```text
projects
```

and the folder contains this:

```text
projects/
└── hello-python/
    └── README.md
```

The relative path to `README.md` is:

```text
hello-python/README.md
```

This path only makes sense if your current folder is `projects`.

Relative paths are shorter, but they depend on where you are.

## The home folder

Your home folder is your personal user folder.

On Windows, it is usually something like:

```text
C:\Users\YourName
```

On Linux, it is usually something like:

```text
/home/your-name
```

On macOS, it is usually something like:

```text
/Users/your-name
```

In many terminal examples, you may see this symbol:

```text
~
```

The `~` symbol means your home folder.

For example, on Linux or macOS:

```bash
cd ~/projects
```

means:

```text
Go to the projects folder inside my home folder.
```

## Parent folder

The parent folder is the folder one level above the current folder.

This symbol means parent folder:

```text
..
```

For example, if you are inside:

```text
projects/hello-python
```

then:

```text
..
```

means:

```text
projects
```

This is useful when moving back up one level in the terminal.

## Why paths matter for programming

Paths matter because developer tools need to know where your files are.

For example:

- Git tracks files inside a project folder.
- VS Code opens a folder as a project.
- Python runs files from a folder.
- `uv` creates project files inside a folder.
- Terminal commands often affect the current folder.

If you are in the wrong folder, a command may fail or create files in the wrong place.

## Example: wrong folder problem

Imagine you want to create a project inside:

```text
Documents/Projects
```

But your terminal is currently inside:

```text
Downloads
```

If you create a folder now, it will be created in `Downloads`, not in `Documents/Projects`.

This is why you should often check your current folder before running important commands.

## Recommended project location

For this guide, it is helpful to keep your projects in one place.

For example, on Windows:

```text
C:\Users\YourName\Documents\Projects
```

On Linux or macOS:

```text
~/projects
```

The exact location is your choice, but using one organized folder makes learning easier.

## Common problems

### I do not know where my terminal is

Check the current folder.

On Windows PowerShell:

```powershell
Get-Location
```

On Linux and macOS:

```bash
pwd
```

### My command created a file in the wrong place

You were probably in a different current folder than expected.

Check where you are, then move to the correct folder before running the command again.

### My path contains spaces

Paths with spaces can be confusing in terminals.

For example:

```text
C:\Users\YourName\My Projects
```

For beginner projects, prefer folder names without spaces:

```text
C:\Users\YourName\Projects
```

Instead of:

```text
My First Project
```

prefer:

```text
my-first-project
```

### Windows paths look different from Linux and macOS paths

That is normal.

Windows often uses:

```text
C:\Users\YourName
```

Linux and macOS use paths like:

```text
/home/your-name
```

or:

```text
/Users/your-name
```

The idea is the same: a path points to a file or folder.

## Key idea

A path is the address of a file or folder.

The terminal always has a current folder.

Many beginner errors happen because a command was run in the wrong folder.

## Next step

Next, learn basic terminal commands:

- [Basic Terminal Commands](03_basic_terminal_commands.md)