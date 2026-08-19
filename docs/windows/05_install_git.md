# Install Git on Windows

Git is the tool that tracks changes in your project files.

In this guide, you will install Git with Chocolatey from PowerShell.

## What you will learn

In this section, you will learn how to:

- install Git with Chocolatey,
- close and reopen PowerShell after installation,
- check that Git works,
- understand common installation problems.

## Before you start

You should already have Chocolatey installed.

If not, read this section first:

- [Install Chocolatey](04_install_chocolatey.md)

You should also understand what Git is:

- [What Are Git and GitHub?](../04_what_are_git_and_github.md)

## Step 1: Open PowerShell as Administrator

Open PowerShell as Administrator.

To do this:

1. Open the Start menu.
2. Type `PowerShell`.
3. Right-click `Windows PowerShell`.
4. Choose `Run as administrator`.
5. Confirm the Windows security prompt if it appears.

Chocolatey usually needs administrator permissions to install software.

## Step 2: Check that Chocolatey works

Run this command in Administrator PowerShell:

```powershell
choco --version
```

This command prints the installed Chocolatey version.

Expected result:

```text
2.x.x
```

The exact version number may be different.

If PowerShell says that `choco` is not recognized, return to the Chocolatey installation page before continuing.

## Step 3: Install Git

Run this command in Administrator PowerShell:

```powershell
choco install git -y
```

This command tells Chocolatey to install Git.

The `-y` option answers yes to Chocolatey's confirmation prompts.

Wait until the command finishes.

You may see a lot of output. That is normal during software installation.

## Step 4: Close and reopen PowerShell

After the installation finishes, close the Administrator PowerShell window.

Then open a new normal PowerShell window from the Start menu.

This helps Windows recognize the new `git` command.

## Step 5: Check that Git works

Run this command in the new PowerShell window:

```powershell
git --version
```

This command prints the installed Git version.

Expected result:

```text
git version 2.x.x
```

The exact version number may be different.

The important part is that PowerShell recognizes `git` and prints a version number.

## Step 6: Check where Git is installed

Run:

```powershell
Get-Command git
```

This command shows where PowerShell finds the `git` command.

Example output may include a path similar to:

```text
C:\Program Files\Git\cmd\git.exe
```

The exact path may be different.

## Do not configure Git yet

At this point, Git is installed.

Do not worry about creating commits yet.

The next page will configure your Git name, email address, and default branch name.

## Common problems

### PowerShell says choco is not recognized

Chocolatey may not be installed, or PowerShell may need to be reopened.

Close PowerShell, open it again, and run:

```powershell
choco --version
```

If it still does not work, return to:

- [Install Chocolatey](04_install_chocolatey.md)

### PowerShell says access is denied

You may not be using Administrator PowerShell.

Close the current PowerShell window and open PowerShell as Administrator.

Then try the install command again.

### Git is installed, but git is not recognized

Close PowerShell completely.

Open a new PowerShell window.

Then run:

```powershell
git --version
```

If it still does not work, restart your computer and try again.

### Chocolatey asks to run scripts

Chocolatey packages may run installation scripts.

For this guide, install only packages from sources you trust.

The Git package is a common developer tool package from the Chocolatey community repository.

### My computer is managed by school, university, or work

Some organizations block software installation.

If installation fails on a managed computer, you may need help from IT support.

## Key idea

Git is now installed on your computer.

This command should print a version number:

```powershell
git --version
```

## Next step

Next, configure Git:

- [Configure Git on Windows](06_configure_git.md)
