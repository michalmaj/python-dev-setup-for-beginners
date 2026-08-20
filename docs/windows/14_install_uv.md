# Install uv

`uv` is a tool for creating and running Python projects.

It can also download and manage Python versions for you.

## What you will learn

In this section, you will learn how to:

- install `uv` on Windows,
- reopen PowerShell after installation,
- check that `uv` works,
- check whether `uv` can manage Python.

## Before you start

You should already have:

- PowerShell,
- Visual Studio Code,
- a working terminal inside VS Code.

If not, read these sections first:

- [Install Visual Studio Code](11_install_vscode.md)
- [Open the VS Code Terminal](13_open_vscode_terminal.md)

## Important safety note

Installing `uv` uses a PowerShell command that downloads and runs an installation script from the internet.

This is common for developer tools, but you should only run installation commands from official sources that you trust.

The official `uv` installation documentation is here:

```text
https://docs.astral.sh/uv/getting-started/installation/
```

## Step 1: Open PowerShell

Open a normal PowerShell window.

You do not need Administrator PowerShell for the official `uv` installer.

## Step 2: Install uv

Run this command in PowerShell:

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

What this command does:

1. Starts PowerShell with a temporary execution policy for this command.
2. Downloads the official `uv` installer script.
3. Runs the installer.

Wait until the command finishes.

## Step 3: Close and reopen PowerShell

Close PowerShell.

Then open a new normal PowerShell window.

This helps Windows recognize the new `uv` command.

## Step 4: Check that uv works

Run:

```powershell
uv --version
```

Expected result:

```text
uv 0.x.x
```

The exact version number may be different.

The important part is that PowerShell recognizes `uv` and prints a version number.

## Step 5: Check Python support

Run:

```powershell
uv python list
```

This shows Python versions that `uv` can see or install.

You do not need to understand the full output yet.

The important part is that the command runs without saying that `uv` is missing.

## Step 6: Install Python if needed

`uv` can download Python automatically when a project needs it.

You can also ask `uv` to install Python now:

```powershell
uv python install
```

This installs a Python version managed by `uv`.

If Python is already installed, `uv` may use the existing Python installation.

Either result is fine for this guide.

## Common problems

### PowerShell says uv is not recognized

Close PowerShell completely.

Open a new PowerShell window.

Then run:

```powershell
uv --version
```

If it still does not work, restart your computer and try again.

### The installation command looks scary

That reaction is reasonable.

The command downloads and runs a script from the internet.

For this guide, use only the official installer command from the official `uv` documentation.

### The installer cannot download files

Your network may block the download.

This can happen on school, university, or work networks.

Try a regular home network if possible, or ask IT support for help.

### uv python install takes time

That is normal.

`uv` may need to download Python.

Wait until the command finishes.

## Key idea

`uv` is now installed.

This command should print a version number:

```powershell
uv --version
```

## Next step

Next, create your first Python project:

- [Create the First Python Project](15_create_first_uv_project.md)
