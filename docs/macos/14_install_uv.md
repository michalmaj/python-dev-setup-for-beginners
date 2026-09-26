# Install uv on macOS

`uv` creates Python projects and manages their Python versions, dependencies, and virtual environments.

## What you will learn

You will learn how to:

- install `uv` with Homebrew,
- verify the installation,
- check the Python versions `uv` can use.

## Before you start

You should already have Homebrew and VS Code:

- [Install Homebrew](04_install_homebrew.md)
- [Install Visual Studio Code on macOS](11_install_vscode.md)

The official installation documentation is available at:

```text
https://docs.astral.sh/uv/getting-started/installation/
```

## Step 1: Check Homebrew

Run this command in Terminal:

```bash
brew --version
```

If it does not print a version, return to the Homebrew guide before continuing.

## Step 2: Install uv

Run:

```bash
brew install uv
```

Homebrew downloads and installs the official `uv` package. Wait until the command finishes.

Do not use `sudo` with this command.

## Step 3: Check uv

Run:

```bash
uv --version
```

Expected result:

```text
uv 0.x.x
```

Your version may be different.

## Step 4: Check Python support

Run:

```bash
uv python list
```

This lists Python versions that `uv` can find or install. You do not need to understand every line yet.

`uv` can automatically download a compatible Python version when a project needs one. You do not need to install Python separately before the next page.

## Optional installation check

Run:

```bash
brew list uv
```

Homebrew should print files belonging to the installed package.

## Common problems

### brew is not found

Close Terminal and open it again. If the command still fails, return to [Install Homebrew](04_install_homebrew.md) and complete the installer's shell setup instructions.

### Homebrew cannot download uv

Check your internet connection and try `brew install uv` again. School or work networks may block package downloads.

### uv is not found after installation

Close Terminal and VS Code completely, then reopen them and run `uv --version` again.

### Homebrew says uv is already installed

That is fine. Run `uv --version`. You can update it later with `brew upgrade uv`.

## Next step

Create and run the first Python project:

- [Create the First Python Project](15_create_first_uv_project.md)
