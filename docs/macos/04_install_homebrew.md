# Install Homebrew

Homebrew is a package manager for macOS. It lets you install command-line tools with short, consistent commands.

## What you will learn

You will learn how to:

- check whether Homebrew is already installed,
- install it from the official source,
- follow its shell setup instructions,
- verify the installation.

## Before you start

You should know how to open Terminal and run a command.

Homebrew supports current macOS versions. Check the [official Homebrew installation documentation](https://docs.brew.sh/Installation) if your Mac uses an older macOS release.

## Step 1: Check for Homebrew

Run this command in Terminal:

```bash
brew --version
```

If it prints a Homebrew version, it is already installed. Continue to the next page.

If Terminal says `command not found`, continue below.

## Step 2: Run the official installer

Run this command in Terminal:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This downloads and starts the installer published by Homebrew.

Read the information shown in Terminal before confirming. The installer may ask for your macOS password and may install Apple's Command Line Tools.

While typing your password, Terminal may show no dots or characters. This is normal.

## Step 3: Follow the shell setup instructions

Near the end, the installer may print a section named `Next steps`.

Run the commands shown there exactly. They add Homebrew to your shell environment so Terminal can find the `brew` command.

The commands differ between Apple Silicon and Intel Macs, so use the ones printed on your own screen.

## Step 4: Check the installation

Close Terminal and open it again. Then run:

```bash
brew --version
```

Expected result:

```text
Homebrew 5.x.x
```

Your version may be different.

Run one more check:

```bash
brew doctor
```

This checks the Homebrew setup. Warnings are not always errors, but read any instructions it prints.

## Common problems

### brew is still not found

Reopen Terminal. If that does not help, rerun the installer and follow the `Next steps` commands it prints.

### The installer asks for a password

Use the password for your macOS user account. You need an account with permission to install software.

### The Command Line Tools installation takes time

Wait for it to finish. The download can take several minutes depending on your connection.

## Next step

Use Homebrew to install Git:

- [Install Git on macOS](05_install_git.md)
