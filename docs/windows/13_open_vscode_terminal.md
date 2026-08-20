# Open the VS Code Terminal

Visual Studio Code has a terminal built into the editor.

This is called the integrated terminal.

## What you will learn

In this section, you will learn how to:

- open the terminal inside VS Code,
- check which folder the terminal is using,
- run Git commands from inside VS Code,
- understand when to use PowerShell outside VS Code and inside VS Code.

## Before you start

You should already have opened the `github-practice` folder in VS Code.

If not, read this section first:

- [Open a Folder in VS Code](12_open_project_in_vscode.md)

## What is the integrated terminal?

The integrated terminal is a terminal panel inside VS Code.

It can run commands just like a separate PowerShell window.

The main advantage is that your editor and terminal are in the same application.

## Step 1: Open the terminal panel

In VS Code, open the top menu.

Choose:

```text
Terminal > New Terminal
```

A terminal panel should appear at the bottom of the VS Code window.

On Windows, this terminal will often use PowerShell.

## Step 2: Check where the terminal is

Run this command in the VS Code terminal:

```powershell
Get-Location
```

Expected result:

```text
Path
----
C:\Users\YourName\Documents\Projects\github-practice
```

Your exact path may be different.

The important part is that the path ends with:

```text
github-practice
```

## Step 3: List the project files

Run:

```powershell
Get-ChildItem
```

You should see:

```text
README.md
```

This means the VS Code terminal is working inside your project folder.

## Step 4: Run a Git command

Run:

```powershell
git status
```

Git should show the status of your `github-practice` repository.

If you already pushed everything to GitHub, Git may say:

```text
nothing to commit, working tree clean
```

That is a good result.

## Step 5: Check your commit history

Run:

```powershell
git log --oneline
```

You should see your first commit.

Example:

```text
abc1234 docs: add README
```

The first part will be different on your computer.

## Step 6: Understand the two terminal options

You can now run commands in two places:

- a separate PowerShell window,
- the VS Code integrated terminal.

Both are useful.

For project work, the VS Code terminal is convenient because it opens inside the project folder.

For installing tools with administrator permissions, use a separate Administrator PowerShell window.

## Common problems

### I cannot find the Terminal menu

Look at the top menu bar in VS Code.

Choose:

```text
Terminal > New Terminal
```

You can also open the Command Palette with:

```text
Ctrl+Shift+P
```

Then search for:

```text
Terminal: Create New Terminal
```

### The terminal opens in the wrong folder

Check what folder VS Code opened.

In the Explorer panel, the top folder should be:

```text
github-practice
```

If it is not, close VS Code and reopen the correct folder:

```powershell
cd $HOME\Documents\Projects\github-practice
code .
```

### PowerShell looks different inside VS Code

That is normal.

The VS Code terminal may use a different font, color theme, or prompt style.

The commands still work the same way.

### Git says this is not a repository

You may be in the wrong folder.

Run:

```powershell
Get-Location
```

Make sure the path ends with:

```text
github-practice
```

If needed, reopen the project folder in VS Code.

## Key idea

The VS Code terminal lets you run commands inside the same window where you edit files.

For project work, this will become your main terminal.

## Next step

Next, install `uv`.

- [Install uv](14_install_uv.md)
