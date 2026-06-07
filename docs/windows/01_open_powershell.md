# Open PowerShell

PowerShell is the main Windows terminal used in this guide.

You will use it to run commands, create folders, install tools, check versions, and later work with Git, Visual Studio Code, and `uv`.

## What you will learn

In this section, you will learn:

- what PowerShell is,
- how to open PowerShell,
- how to check that it is working,
- when to use normal PowerShell,
- when administrator mode may be needed,
- how PowerShell is different from Command Prompt.

## Before you start

You should already understand:

- what a terminal is,
- what a command is,
- what the current folder means.

If not, read these sections first:

- [What Is a Terminal?](../01_what_is_a_terminal.md)
- [Files, Folders, and Paths](../02_files_folders_and_paths.md)
- [Basic Terminal Commands](../03_basic_terminal_commands.md)

## What is PowerShell?

PowerShell is a command-line shell available on Windows.

In simple words, it is a place where you type commands and press Enter.

You can use PowerShell to ask Windows to do things such as:

- show the current folder,
- list files,
- create folders,
- install tools,
- run programs.

In this guide, PowerShell is the default Windows terminal.

## Open PowerShell from the Start menu

This is the recommended beginner method.

### Step 1: Open the Start menu

Press the Windows key on your keyboard.

You can also click the Start button on the taskbar.

### Step 2: Search for PowerShell

Type:

```text
PowerShell
```

You should see an application named:

```text
Windows PowerShell
```

or:

```text
PowerShell
```

### Step 3: Open PowerShell

Click the PowerShell application.

A terminal window should open.

It may have a dark background and text inside it. That is normal.

## Check that PowerShell works

After PowerShell opens, type this command:

```powershell
Get-Location
```

Then press Enter.

This command shows the current folder.

Example output:

```text
Path
----
C:\Users\YourName
```

Your path will probably be different. That is normal.

The important part is that PowerShell accepted the command and printed a result.

## The PowerShell prompt

In PowerShell, you may see something like this:

```text
PS C:\Users\YourName>
```

This is called the prompt.

The prompt shows that PowerShell is waiting for your next command.

You do not type the prompt itself.

For example, if you see:

```text
PS C:\Users\YourName>
```

and the guide says to run:

```powershell
Get-Location
```

you only type:

```text
Get-Location
```

Then press Enter.

## Normal PowerShell and Administrator PowerShell

There are two common ways to open PowerShell:

- normal PowerShell,
- PowerShell as Administrator.

For most beginner tasks, use normal PowerShell.

Administrator mode gives more permissions. Some installation steps may need it, but it should not be used all the time without a reason.

In this guide, a page will clearly say when administrator mode is required.

## How to open PowerShell as Administrator

Some installation steps may require administrator permissions.

To open PowerShell as Administrator:

1. Open the Start menu.
2. Type `PowerShell`.
3. Right-click PowerShell.
4. Choose `Run as administrator`.
5. Confirm the system prompt if Windows asks.

The window may look almost the same, but it has higher permissions.

Use this only when the guide explicitly says so.

## PowerShell vs Command Prompt

Windows also has an older terminal called Command Prompt.

It may appear as:

```text
cmd
```

or:

```text
Command Prompt
```

This guide uses PowerShell instead of Command Prompt.

Command Prompt and PowerShell can run some similar commands, but they are not the same.

For example, in PowerShell this command shows the current folder:

```powershell
Get-Location
```

In Command Prompt, a similar command is:

```cmd
cd
```

To keep things simple, use PowerShell for the Windows path.

## PowerShell vs Windows Terminal

Windows Terminal is a modern terminal application.

It can open PowerShell inside it.

This means that PowerShell is the shell, and Windows Terminal can be the window that displays it.

For beginners, this difference is not very important yet.

If you open PowerShell and can run commands, you are ready to continue.

## Quick practice

Run this command:

```powershell
Get-Location
```

It shows your current folder.

Then run:

```powershell
Get-ChildItem
```

This command lists files and folders in the current folder.

You may see folders such as:

```text
Desktop
Documents
Downloads
Pictures
```

The exact list depends on your computer.

## How to close PowerShell

You can close PowerShell like any normal window.

You can also type:

```powershell
exit
```

Then press Enter.

This closes the PowerShell session.

## Common problems

### I cannot find PowerShell

Open the Start menu and search for:

```text
PowerShell
```

If you are using a newer Windows setup, you may also see Windows Terminal.

Opening Windows Terminal is also fine if it opens a PowerShell tab.

### I opened Command Prompt by mistake

Command Prompt usually shows something like:

```text
C:\Users\YourName>
```

PowerShell usually shows something like:

```text
PS C:\Users\YourName>
```

Close Command Prompt and open PowerShell instead.

### PowerShell asks for administrator permission

You probably clicked `Run as administrator`.

That is not a problem, but for normal practice you can close it and open regular PowerShell.

Use administrator mode only when the guide says it is needed.

### My PowerShell looks different

That is normal.

PowerShell can look different depending on your Windows version, theme, font, terminal application, and settings.

Focus on the commands, not on the exact appearance.

### The command gives an error

Check that you typed the command correctly:

```powershell
Get-Location
```

PowerShell commands are usually not case-sensitive, so `get-location` should also work.

However, spelling still matters.

## Key idea

PowerShell is the Windows terminal used in this guide.

You type commands into PowerShell, press Enter, and read the output.

For now, the most important command is:

```powershell
Get-Location
```

It tells you where PowerShell currently is.

## Next step

Next, learn basic PowerShell commands:

- [Basic PowerShell Commands](02_basic_powershell_commands.md)