# Install Git on macOS

Git tracks changes in your project files. This guide installs it with Homebrew so it can be updated through the same package manager.

## What you will learn

You will learn how to:

- check for an existing Git installation,
- install Git with Homebrew,
- verify which Git command Terminal uses.

## Before you start

Homebrew should already work:

```bash
brew --version
```

If it does not, return to [Install Homebrew](04_install_homebrew.md).

## Step 1: Check Git

Run this command in Terminal:

```bash
git --version
```

macOS may already provide Git or may offer to install Apple's Command Line Tools. This guide still recommends the Homebrew version for a consistent setup.

## Step 2: Install Git

Run:

```bash
brew install git
```

Homebrew downloads and installs Git. Wait until the command finishes.

Do not use `sudo` with this command.

## Step 3: Reopen Terminal

Close Terminal and open it again. This gives the new session an updated command environment.

## Step 4: Check the result

Run:

```bash
git --version
```

Expected result:

```text
git version 2.x.x
```

The exact version will be different.

Check which executable Terminal finds:

```bash
which git
```

Common Homebrew locations are:

```text
/opt/homebrew/bin/git
```

for Apple Silicon Macs, or:

```text
/usr/local/bin/git
```

for Intel Macs.

## Common problems

### brew is not found

Return to the Homebrew installation page and complete the shell setup instructions printed by its installer.

### Homebrew says Git is already installed

That is fine. Run `brew upgrade git` to update it, or continue if `git --version` works.

### which git shows /usr/bin/git

Reopen Terminal and run `brew --prefix`. If Homebrew works but its Git is not selected, read the instructions printed by `brew info git`.

## Next step

Configure the identity Git adds to commits:

- [Configure Git on macOS](06_configure_git.md)
