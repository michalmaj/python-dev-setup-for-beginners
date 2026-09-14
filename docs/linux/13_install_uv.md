# Install uv

`uv` is a tool for creating and running Python projects.

It can also download and manage Python versions for you.

## What you will learn

In this section, you will learn how to:

- install `uv` on Linux,
- reopen the terminal after installation,
- check that `uv` works,
- check whether `uv` can manage Python.

## Before you start

You should already have:

- the Linux terminal,
- Visual Studio Code,
- a working terminal inside VS Code.

If not, read these sections first:

- [Install Visual Studio Code](10_install_vscode.md)
- [Open the VS Code Terminal](12_open_vscode_terminal.md)

## Important safety note

Installing `uv` uses a terminal command that downloads and runs an installation script from the internet.

This is common for developer tools, but you should only run installation commands from official sources that you trust.

The official `uv` installation documentation is here:

```text
https://docs.astral.sh/uv/getting-started/installation/
```

## Step 1: Open the terminal

Open a normal terminal window.

You do not need `sudo` for the official `uv` installer.

## Step 2: Check whether curl is available

Run:

```bash
curl --version
```

If this prints version information, continue to the next step.

If the terminal says `curl` is not found, install it:

```bash
sudo apt update
sudo apt install curl
```

## Step 3: Install uv

Run:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

What this command does:

1. Downloads the official `uv` installer script.
2. Runs the installer with `sh`.
3. Installs the `uv` command for your user account.

Wait until the command finishes.

## Step 4: Close and reopen the terminal

Close the terminal.

Then open a new terminal window.

This helps Linux recognize the new `uv` command if the installer updated your shell path.

## Step 5: Check that uv works

Run:

```bash
uv --version
```

Expected result:

```text
uv 0.x.x
```

The exact version number may be different.

The important part is that the terminal recognizes `uv` and prints a version number.

## Step 6: Check Python support

Run:

```bash
uv python list
```

This shows Python versions that `uv` can see or install.

You do not need to understand the full output yet.

The important part is that the command runs without saying that `uv` is missing.

## Step 7: Install Python if needed

`uv` can download Python automatically when a project needs it.

You can also ask `uv` to install Python now:

```bash
uv python install
```

This installs a Python version managed by `uv`.

If Python is already installed, `uv` may use the existing Python installation.

Either result is fine for this guide.

## Common problems

### The installation command looks scary

That reaction is reasonable.

The command downloads and runs a script from the internet.

For this guide, use only the official installer command from the official `uv` documentation.

### curl is not found

Install `curl`:

```bash
sudo apt update
sudo apt install curl
```

Then run the `uv` installation command again.

### uv is not found

Close the terminal completely.

Open a new terminal window.

Then run:

```bash
uv --version
```

If it still does not work, restart your computer and try again.

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

```bash
uv --version
```

## Next step

Next, create your first Python project:

- [Create the First Python Project](14_create_first_uv_project.md)
