# Basic Terminal Commands

This section introduces the first terminal commands that are useful for beginners.

You do not need to memorize all of them immediately. The goal is to understand what each command does and when it is useful.

## What you will learn

In this section, you will learn how to:

- check the current folder,
- list files and folders,
- move between folders,
- create folders,
- create files,
- remove files,
- clear the terminal,
- ask for help.

## Before you start

You should already understand:

- what a terminal is,
- what files and folders are,
- what a path is,
- what the current folder means.

If not, read these sections first:

- [What Is a Terminal?](01_what_is_a_terminal.md)
- [Files, Folders, and Paths](02_files_folders_and_paths.md)

## PowerShell and Bash commands

This guide uses different examples for different operating systems.

For Windows, commands are shown for PowerShell:

```powershell
Get-Location
```

For Linux and macOS, commands are shown for Bash-like shells:

```bash
pwd
```

Some commands are similar across systems, but not all of them are exactly the same.

## Check the current folder

The terminal always works inside one folder at a time.

This folder is called the current folder or current directory.

### Windows PowerShell

Run this command in PowerShell:

```powershell
Get-Location
```

This command shows where your terminal currently is.

Example output:

```text
Path
----
C:\Users\YourName\Documents
```

### Linux and macOS

Run this command in the terminal:

```bash
pwd
```

This command prints the current folder.

Example output:

```text
/home/your-name/Documents
```

On macOS, the output may look like this:

```text
/Users/your-name/Documents
```

## List files and folders

Listing files means showing what is inside the current folder.

### Windows PowerShell

Run this command in PowerShell:

```powershell
Get-ChildItem
```

This command shows files and folders in the current folder.

PowerShell also supports this shorter command:

```powershell
ls
```

In this guide, `Get-ChildItem` is shown first because it is the full PowerShell command. You may still see `ls` often in tutorials.

### Linux and macOS

Run this command in the terminal:

```bash
ls
```

This command lists files and folders in the current folder.

Example output:

```text
README.md
docs
src
tests
```

The exact output depends on what is inside your folder.

## Change the current folder

To move into another folder, use the `cd` command.

The name `cd` means:

```text
change directory
```

A directory is another word for folder.

### Example folder structure

Imagine you are in a folder that contains another folder named `projects`:

```text
Documents/
└── projects/
```

To move into `projects`, run:

### Windows PowerShell

```powershell
cd projects
```

### Linux and macOS

```bash
cd projects
```

After that, check where you are.

### Windows PowerShell

```powershell
Get-Location
```

### Linux and macOS

```bash
pwd
```

## Move to the parent folder

The parent folder is one level above the current folder.

To move up one level, use:

### Windows PowerShell

```powershell
cd ..
```

### Linux and macOS

```bash
cd ..
```

The `..` symbol means:

```text
the folder above this one
```

Example:

```text
Documents/projects
```

If you run:

```bash
cd ..
```

you move back to:

```text
Documents
```

## Move to the home folder

The home folder is your personal user folder.

### Windows PowerShell

Run:

```powershell
cd $HOME
```

This moves you to your user folder.

Example location:

```text
C:\Users\YourName
```

### Linux and macOS

Run:

```bash
cd ~
```

This moves you to your home folder.

Example location on Linux:

```text
/home/your-name
```

Example location on macOS:

```text
/Users/your-name
```

## Create a folder

To create a new folder, use `mkdir`.

The name `mkdir` means:

```text
make directory
```

### Windows PowerShell

Run this command in PowerShell:

```powershell
mkdir my-project
```

This creates a new folder named `my-project`.

### Linux and macOS

Run this command in the terminal:

```bash
mkdir my-project
```

This creates a new folder named `my-project`.

After creating the folder, list the current folder to check that it worked.

### Windows PowerShell

```powershell
Get-ChildItem
```

### Linux and macOS

```bash
ls
```

You should see:

```text
my-project
```

## Create a file

Creating files is useful when starting small projects.

### Windows PowerShell

Run this command in PowerShell:

```powershell
New-Item README.md -ItemType File
```

This creates a new file named `README.md`.

### Linux and macOS

Run this command in the terminal:

```bash
touch README.md
```

This creates a new file named `README.md`.

After creating the file, list the current folder.

### Windows PowerShell

```powershell
Get-ChildItem
```

### Linux and macOS

```bash
ls
```

You should see:

```text
README.md
```

## Create a simple practice folder

Now try a small practice example.

Create a folder:

### Windows PowerShell

```powershell
mkdir terminal-practice
```

### Linux and macOS

```bash
mkdir terminal-practice
```

Move into it:

### Windows PowerShell

```powershell
cd terminal-practice
```

### Linux and macOS

```bash
cd terminal-practice
```

Create a file:

### Windows PowerShell

```powershell
New-Item notes.txt -ItemType File
```

### Linux and macOS

```bash
touch notes.txt
```

List the folder content:

### Windows PowerShell

```powershell
Get-ChildItem
```

### Linux and macOS

```bash
ls
```

You should see:

```text
notes.txt
```

Check where you are:

### Windows PowerShell

```powershell
Get-Location
```

### Linux and macOS

```bash
pwd
```

## Remove a file

Be careful with remove commands.

Removing files from the terminal can be permanent or hard to undo.

For now, only remove files that you created for practice.

### Windows PowerShell

Run this command in PowerShell:

```powershell
Remove-Item notes.txt
```

This removes the file named `notes.txt`.

### Linux and macOS

Run this command in the terminal:

```bash
rm notes.txt
```

This removes the file named `notes.txt`.

After removing the file, list the folder content again.

### Windows PowerShell

```powershell
Get-ChildItem
```

### Linux and macOS

```bash
ls
```

The file should no longer be visible.

## Clear the terminal

Sometimes the terminal becomes full of old output.

Clearing the terminal does not remove files. It only cleans the visible terminal screen.

### Windows PowerShell

```powershell
Clear-Host
```

PowerShell also supports:

```powershell
cls
```

### Linux and macOS

```bash
clear
```

## Get help

Many commands have built-in help.

### Windows PowerShell

To get help for a command, use:

```powershell
Get-Help Get-Location
```

This shows help for the `Get-Location` command.

If PowerShell says that help files are not installed, that is okay for now. You can continue with the guide.

### Linux and macOS

Many Unix-like systems use `man`, which means manual.

For example:

```bash
man pwd
```

This opens the manual page for `pwd`.

To exit a manual page, press:

```text
q
```

Do not worry if manual pages feel too technical at first. They are useful later, but beginners do not need to understand everything immediately.

## Command summary

| Goal | Windows PowerShell | Linux/macOS |
| --- | --- | --- |
| Show current folder | `Get-Location` | `pwd` |
| List files and folders | `Get-ChildItem` | `ls` |
| Change folder | `cd folder-name` | `cd folder-name` |
| Move up one level | `cd ..` | `cd ..` |
| Go to home folder | `cd $HOME` | `cd ~` |
| Create folder | `mkdir folder-name` | `mkdir folder-name` |
| Create file | `New-Item file.txt -ItemType File` | `touch file.txt` |
| Remove file | `Remove-Item file.txt` | `rm file.txt` |
| Clear terminal | `Clear-Host` | `clear` |

## Common problems

### The terminal says the folder does not exist

You may see an error when running:

```bash
cd folder-name
```

This usually means that the folder does not exist in the current folder.

Check what is inside the current folder.

On Windows PowerShell:

```powershell
Get-ChildItem
```

On Linux and macOS:

```bash
ls
```

Then make sure you typed the folder name correctly.

### I created a file, but I cannot see it

You may be in a different folder than expected.

Check the current folder.

On Windows PowerShell:

```powershell
Get-Location
```

On Linux and macOS:

```bash
pwd
```

Then list the files again.

### My file or folder name contains spaces

Spaces in names can make terminal commands harder for beginners.

For learning, prefer names like:

```text
my-project
```

or:

```text
terminal-practice
```

Avoid names like:

```text
My First Project
```

You can use spaces later, but names without spaces are easier at the beginning.

### I am afraid of removing the wrong file

That is a good instinct.

Before removing a file, always check:

1. What folder am I in?
2. What files are here?
3. Am I removing only a practice file?

For now, do not remove folders from the terminal unless the guide explicitly tells you to do so.

## Key idea

Most beginner terminal work is based on a few simple actions:

- check where you are,
- list what is there,
- move into a folder,
- create something,
- run a command,
- check the result.

You do not need hundreds of commands to get started.

## Next step

Next, choose the setup path for your operating system:

- [Windows Path](windows/00_windows_path.md)
- Linux path
- macOS path