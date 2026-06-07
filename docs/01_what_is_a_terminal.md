# What Is a Terminal?

A terminal is a text-based way to talk to your computer.

Instead of clicking buttons and menus, you type commands.

For example, instead of opening a folder by clicking it, you can type a command that moves you into that folder.

## What you will learn

In this section, you will learn:

- what a terminal is,
- what a command is,
- why developers use terminals,
- what PowerShell, Terminal, and shell mean,
- where commands should be typed,
- why terminals may look different on different systems.

## Terminal in simple words

A terminal is an application where you type instructions for your computer.

These instructions are called **commands**.

A command tells the computer to do something.

For example:

```text
Show me where I am.
```

```text
Create a new folder.
```

```text
Move into this folder.
```

```text
Run this program.
```

In a terminal, these ideas are written as short commands.

For example:

```bash
pwd
```

This command shows the current folder on Linux and macOS.

On Windows PowerShell, a similar command is:

```powershell
Get-Location
```

Both commands answer the same question:

```text
Where am I right now?
```

## Why developers use terminals

Developers use terminals because many programming tools are designed to be used with commands.

For example, later in this guide you will use commands to:

- install tools,
- create folders,
- create Python projects,
- run Python code,
- use Git,
- send code to GitHub,
- open projects in Visual Studio Code.

A terminal may look strange at first, but it is one of the most useful tools in programming.

## Terminal, shell, console, command line

You may see several words that sound similar.

For beginners, the exact technical differences are not important yet.

Here is a practical explanation.

### Terminal

A terminal is the window or application where you type commands.

Examples:

- Windows Terminal,
- PowerShell window,
- macOS Terminal,
- Linux terminal,
- VS Code integrated terminal.

### Shell

A shell is the program that understands your commands.

Examples:

- PowerShell on Windows,
- Bash on Linux,
- Zsh on macOS.

The terminal is the place where you type.

The shell is the program that reads what you typed.

### Command line

The command line is the text-based interface where you type commands.

When someone says:

```text
Open the command line.
```

They usually mean:

```text
Open a terminal.
```

## Different systems use different terminals

The terminal may look different depending on your operating system.

### Windows

On Windows, this guide will mainly use:

```text
PowerShell
```

PowerShell is a command-line shell available on Windows.

Example command:

```powershell
Get-Location
```

### Linux

On Linux, this guide will use a regular terminal.

Most examples will use commands that work in common Linux shells such as Bash.

Example command:

```bash
pwd
```

### macOS

On macOS, this guide will use:

```text
Terminal
```

The default shell on modern macOS versions is usually Zsh, but many beginner commands are the same as in Bash.

Example command:

```bash
pwd
```

## Commands and output

When you type a command and press Enter, the terminal may show a result.

The command is what you type.

The output is what the terminal prints back.

Example command:

```bash
pwd
```

Example output:

```text
/home/your-name/projects
```

The exact output on your computer will be different. That is normal.

## The current folder

The terminal always works inside some folder.

This folder is called the **current folder** or **current directory**.

When you run a command, the result often depends on the current folder.

For example, if you create a new file, it will usually be created in the folder where the terminal currently is.

This is why one of the first things to learn is how to check your current folder.

On Linux and macOS:

```bash
pwd
```

On Windows PowerShell:

```powershell
Get-Location
```

## Where should you type commands?

This is one of the most common beginner questions.

Commands should be typed into a terminal window.

Depending on the guide section, this may mean:

- PowerShell on Windows,
- Terminal on macOS,
- a terminal on Linux,
- the integrated terminal inside Visual Studio Code.

Later sections will always say where a command should be typed.

For example:

```text
Run this command in PowerShell.
```

or:

```text
Run this command in the VS Code terminal.
```

## Why terminals can feel confusing

Terminals can feel confusing because they do not explain much by themselves.

A terminal expects you to know:

- what command to type,
- where you are in the file system,
- whether the command exists,
- whether you have permission to run it,
- what the output means.

This guide will explain these things slowly.

You do not need to memorize everything immediately.

## Common problems

### I opened a black window. Is that the terminal?

Probably yes.

Many terminals are dark by default. A terminal usually shows a line where you can type commands.

### I typed something and got an error.

That is normal.

Errors are common when learning the terminal.

The most important thing is to read the message and check:

- Did you type the command correctly?
- Are you in the correct folder?
- Is the tool installed?
- Are you using the correct terminal for your operating system?

### My terminal looks different from screenshots or examples.

That is also normal.

Terminals can have different colors, fonts, prompts, and layouts.

Focus on the command itself, not on the exact appearance.

### I do not know where I am.

Use a command that shows the current folder.

On Windows PowerShell:

```powershell
Get-Location
```

On Linux and macOS:

```bash
pwd
```

## Key idea

A terminal is not magic.

It is just another way to control your computer.

At first, it may feel uncomfortable because it uses text instead of buttons. With practice, it becomes one of the fastest and most useful tools in development.

## Next step

Next, learn about files, folders, and paths:

- [Files, Folders, and Paths](02_files_folders_and_paths.md)