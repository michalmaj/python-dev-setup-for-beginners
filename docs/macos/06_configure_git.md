# Configure Git on macOS

Git needs a name and email address to record who created each commit.

## What you will learn

You will learn how to:

- set your Git name,
- set your Git email address,
- use `main` as the default branch,
- check the saved configuration.

## Step 1: Check Git

Run this command in Terminal:

```bash
git --version
```

If it does not print a version, return to [Install Git on macOS](05_install_git.md).

## Step 2: Set your name

Replace `Your Name` with the name you want attached to commits:

```bash
git config --global user.name "Your Name"
```

For example:

```bash
git config --global user.name "Alex Smith"
```

## Step 3: Set your email address

Replace the example with your email address:

```bash
git config --global user.email "you@example.com"
```

Using an address connected to your future GitHub account makes it easier for GitHub to associate commits with you.

## Step 4: Set the default branch name

Run:

```bash
git config --global init.defaultBranch main
```

New repositories created with `git init` will now start on a branch named `main`.

## Step 5: Check the configuration

Run:

```bash
git config --global --list
```

Look for lines similar to:

```text
user.name=Alex Smith
user.email=alex@example.com
init.defaultbranch=main
```

## Correct a mistake

Run the same configuration command again with the correct value. Git replaces the previous value.

For example:

```bash
git config --global user.email "correct@example.com"
```

## Privacy note

Commit email addresses can be visible in public repository history. GitHub can provide a private `noreply` address after you create an account.

## Next step

Practice the first local Git workflow:

- [Create a Local Git Repository](07_create_local_git_repository.md)
