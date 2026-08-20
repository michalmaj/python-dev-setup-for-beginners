# Install Git on Linux

Git is the tool that tracks changes in your project files.

In this guide, you will install Git on Ubuntu or Debian with `apt`.

## What you will learn

In this section, you will learn how to:

- update the package list,
- install Git with `apt`,
- check that Git works,
- understand common installation problems.

## Before you start

You should already know how to open the terminal.

If not, read this section first:

- [Open the Terminal](01_open_terminal.md)

You should also understand what Git is:

- [What Are Git and GitHub?](../04_what_are_git_and_github.md)

## What is apt?

`apt` is the command-line package manager used by Ubuntu, Debian, and similar Linux distributions.

A package manager installs, updates, and removes software.

In this guide, `apt` is used only for beginner installation commands.

## Step 1: Open the terminal

Open the terminal.

You do not need a special administrator terminal window.

On Linux, installation commands can ask for administrator permission with `sudo`.

## Step 2: Update the package list

Run:

```bash
sudo apt update
```

This command asks `apt` to download the latest package information.

`sudo` means:

```text
run this command with administrator permissions
```

Linux may ask for your password.

When you type the password, the terminal may not show any characters. That is normal.

## Step 3: Install Git

Run:

```bash
sudo apt install git
```

This command tells `apt` to install the `git` package.

If the terminal asks whether you want to continue, type:

```text
Y
```

Then press Enter.

Wait until the command finishes.

You may see a lot of output. That is normal during software installation.

## Step 4: Check that Git works

Run:

```bash
git --version
```

This command prints the installed Git version.

Expected result:

```text
git version 2.x.x
```

The exact version number may be different.

The important part is that the terminal recognizes `git` and prints a version number.

## Step 5: Check where Git is installed

Run:

```bash
which git
```

This command shows where the terminal finds the `git` command.

Example output:

```text
/usr/bin/git
```

The exact path may be different.

## Do not configure Git yet

At this point, Git is installed.

Do not worry about creating commits yet.

The next page will configure your Git name, email address, and default branch name.

## Common problems

### sudo asks for a password

That is normal.

Type the password for your Linux user account and press Enter.

The terminal may not show dots or stars while you type.

### apt says unable to locate package git

Run:

```bash
sudo apt update
```

Then try again:

```bash
sudo apt install git
```

### apt says permission denied

Make sure you used `sudo`:

```bash
sudo apt install git
```

Without `sudo`, your user may not have permission to install software.

### This is not Ubuntu or Debian

Other Linux distributions may use a different package manager.

Examples:

- Fedora often uses `dnf`,
- Arch often uses `pacman`,
- openSUSE often uses `zypper`.

This first Linux path focuses on Ubuntu and Debian-style systems.

## Key idea

Git is now installed on your computer.

This command should print a version number:

```bash
git --version
```

## Next step

Next, configure Git:

- [Configure Git on Linux](05_configure_git.md)
