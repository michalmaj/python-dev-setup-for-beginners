# Configure Git on Windows

After installing Git, configure the name and email address that Git will attach to your commits.

You only need to do this once on your computer.

## What you will learn

In this section, you will learn how to:

- set your Git name,
- set your Git email address,
- set `main` as the default branch name,
- check your Git configuration,
- fix common configuration mistakes.

## Before you start

You should already have Git installed.

If not, read this section first:

- [Install Git on Windows](05_install_git.md)

## Why configure Git?

Git records who made each commit.

Before you create commits, Git needs to know your name and email address.

These values do not need to match your Windows account name.

Use the name and email address you want to use for coding projects.

## Step 1: Open PowerShell

Open a normal PowerShell window.

You do not need Administrator PowerShell for Git configuration.

## Step 2: Check that Git works

Run this command in PowerShell:

```powershell
git --version
```

Expected result:

```text
git version 2.x.x
```

The exact version number may be different.

## Step 3: Set your Git name

Run this command in PowerShell.

Replace `Your Name` with your real name or the name you want to use on commits:

```powershell
git config --global user.name "Your Name"
```

Example:

```powershell
git config --global user.name "Alex Smith"
```

This command saves your Git name for your Windows user account.

## Step 4: Set your Git email address

Run this command in PowerShell.

Replace `you@example.com` with your email address:

```powershell
git config --global user.email "you@example.com"
```

Example:

```powershell
git config --global user.email "alex@example.com"
```

This email address will be attached to commits you create.

Later, when you use GitHub, it is usually easiest to use the email address connected to your GitHub account.

## Step 5: Set the default branch name

Run:

```powershell
git config --global init.defaultBranch main
```

This tells Git to name the first branch `main` when you create a new repository.

You do not need to understand branches deeply yet.

For now, remember that `main` is the usual name for the primary branch in this guide.

## Step 6: Check your settings

Run:

```powershell
git config --global --list
```

You should see lines similar to:

```text
user.name=Alex Smith
user.email=alex@example.com
init.defaultbranch=main
```

Your name and email address will be different.

## Step 7: Check one setting at a time

You can also check a single value.

Run:

```powershell
git config --global user.name
```

Expected result:

```text
Alex Smith
```

Run:

```powershell
git config --global user.email
```

Expected result:

```text
alex@example.com
```

Your output should match the values you entered.

## Common problems

### Git says command not found

PowerShell may say that `git` is not recognized.

Close PowerShell, open it again, and run:

```powershell
git --version
```

If it still does not work, return to:

- [Install Git on Windows](05_install_git.md)

### I typed the wrong name

Run the `user.name` command again with the correct name:

```powershell
git config --global user.name "Correct Name"
```

Git will replace the old value.

### I typed the wrong email address

Run the `user.email` command again with the correct email address:

```powershell
git config --global user.email "correct@example.com"
```

Git will replace the old value.

### I do not know which email address to use

Use the email address you plan to use with GitHub.

If you are not sure yet, choose the email address you normally use for learning or coding accounts.

You can change it later.

### The output contains more settings

That is normal.

Git may show other settings that were created by the installer or other tools.

For now, look for:

```text
user.name
user.email
init.defaultbranch
```

## Key idea

Git needs your name and email address before you create commits.

These commands are the most important:

```powershell
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main
```

## Next step

Next, learn how GitHub fits into the workflow.

The GitHub account page is planned, but not written yet.
